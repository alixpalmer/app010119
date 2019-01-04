require 'test_helper'

class RoomControllerTest < ActionDispatch::IntegrationTest
  test "should get items" do
    get room_items_url
    assert_response :success
  end

end
