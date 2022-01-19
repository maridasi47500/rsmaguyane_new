require 'test_helper'

class RsmaguyaneControllerTest < ActionDispatch::IntegrationTest
  test "should get notremission" do
    get rsmaguyane_notremission_url
    assert_response :success
  end

end
