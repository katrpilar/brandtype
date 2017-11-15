require 'test_helper'

class BusinessControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get business_new_url
    assert_response :success
  end

end
