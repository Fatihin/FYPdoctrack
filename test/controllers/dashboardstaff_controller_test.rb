require 'test_helper'

class DashboardstaffControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dashboardstaff_index_url
    assert_response :success
  end

end
