require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest


  test "should get create" do
    post users_path ,params: { :user => {:list => fixture_file_upload('files/TaskSampleSheet.xlsx')} }, xhr: true
    assert_response :success
  end

end
