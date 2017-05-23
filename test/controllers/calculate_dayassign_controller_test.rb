require 'test_helper'

class CalculateDayassignControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get calculate_dayassign_index_url
    assert_response :success
  end

end
