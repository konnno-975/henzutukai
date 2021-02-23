require 'test_helper'

class InformationControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get information_top_url
    assert_response :success
  end

end
