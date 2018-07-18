require 'test_helper'

class PostcardControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get postcard_index_url
    assert_response :success
  end

end
