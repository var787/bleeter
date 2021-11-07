require "test_helper"

class BleetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bleet = bleets(:one)
  end

  test "should get index" do
    get bleets_url
    assert_response :success
  end

  test "should get new" do
    get new_bleet_url
    assert_response :success
  end

  test "should create bleet" do
    assert_difference('Bleet.count') do
      post bleets_url, params: { bleet: { bleet: @bleet.bleet } }
    end

    assert_redirected_to bleet_url(Bleet.last)
  end

  test "should show bleet" do
    get bleet_url(@bleet)
    assert_response :success
  end

  test "should get edit" do
    get edit_bleet_url(@bleet)
    assert_response :success
  end

  test "should update bleet" do
    patch bleet_url(@bleet), params: { bleet: { bleet: @bleet.bleet } }
    assert_redirected_to bleet_url(@bleet)
  end

  test "should destroy bleet" do
    assert_difference('Bleet.count', -1) do
      delete bleet_url(@bleet)
    end

    assert_redirected_to bleets_url
  end
end
