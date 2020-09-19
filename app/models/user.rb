class User < ApplicationRecord
  validates_presence_of :first_name, :message => "First name is required"
  validates_presence_of :last_name, :message => "Last name is required"
  validates_presence_of :email, :message => "Email is required"
  validates :email,email: {:message => "Invalid email"}
end
