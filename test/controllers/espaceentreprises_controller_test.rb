require 'test_helper'

class EspaceentreprisesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get espaceentreprises_index_url
    assert_response :success
  end

end
