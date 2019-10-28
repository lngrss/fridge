require 'test_helper'

class FirstTryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get first_try_index_url
    assert_response :success
  end

end
