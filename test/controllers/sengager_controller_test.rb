require 'test_helper'

class SengagerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sengager_index_url
    assert_response :success
  end

end
