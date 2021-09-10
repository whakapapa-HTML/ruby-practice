require 'test_helper'

class LotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get lots_index_url
    assert_response :success
  end

end
