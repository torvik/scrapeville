require 'test_helper'

class NewsvillesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newsville = newsvilles(:one)
  end

  test "should get index" do
    get newsvilles_url
    assert_response :success
  end

  test "should get new" do
    get new_newsville_url
    assert_response :success
  end

  test "should create newsville" do
    assert_difference('Newsville.count') do
      post newsvilles_url, params: { newsville: { body: @newsville.body, image_url: @newsville.image_url, time: @newsville.time, title: @newsville.title, title_url: @newsville.title_url } }
    end

    assert_redirected_to newsville_url(Newsville.last)
  end

  test "should show newsville" do
    get newsville_url(@newsville)
    assert_response :success
  end

  test "should get edit" do
    get edit_newsville_url(@newsville)
    assert_response :success
  end

  test "should update newsville" do
    patch newsville_url(@newsville), params: { newsville: { body: @newsville.body, image_url: @newsville.image_url, time: @newsville.time, title: @newsville.title, title_url: @newsville.title_url } }
    assert_redirected_to newsville_url(@newsville)
  end

  test "should destroy newsville" do
    assert_difference('Newsville.count', -1) do
      delete newsville_url(@newsville)
    end

    assert_redirected_to newsvilles_url
  end
end
