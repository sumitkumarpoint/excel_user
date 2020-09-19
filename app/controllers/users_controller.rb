class UsersController < ApplicationController


  def create
    xlsx = Roo::Spreadsheet.open(params[:user][:list].tempfile)
     @users=[]
    xlsx.each_with_pagename do |name, sheet|
      csv= sheet.to_csv
      csv      = CSV.parse(csv, :headers => true)
      csv.each do |row|
        data       = row.to_hash
        @users.push({:first_name=>data["FIRST_NAME"],:last_name=>data["LAST_NAME"],:email=>data["EMAIL_ID"]})
        # user=User.new({:first_name=>data["FIRST_NAME"],:last_name=>data["LAST_NAME"],:email=>data["EMAIL_ID"]})
        # @users.push(user.errors)
        # user.save
      end
      @all_users=User.create(@users)
    end


  end
end
