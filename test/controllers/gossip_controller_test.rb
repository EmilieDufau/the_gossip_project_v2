require 'test_helper'

class GossipControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get gossip_edit_url
    assert_response :success
  end

  test "should get new_gossip" do
    get gossip_new_gossip_url
    assert_response :success
  end

  test "should get show" do
    get gossip_show_url
    assert_response :success
  end

end
