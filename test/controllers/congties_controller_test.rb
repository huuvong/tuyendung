require 'test_helper'

class CongtiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @congty = congties(:one)
  end

  test "should get index" do
    get congties_url
    assert_response :success
  end

  test "should get new" do
    get new_congty_url
    assert_response :success
  end

  test "should create congty" do
    assert_difference('Congty.count') do
      post congties_url, params: { congty: { tencongty: @congty.tencongty } }
    end

    assert_redirected_to congty_url(Congty.last)
  end

  test "should show congty" do
    get congty_url(@congty)
    assert_response :success
  end

  test "should get edit" do
    get edit_congty_url(@congty)
    assert_response :success
  end

  test "should update congty" do
    patch congty_url(@congty), params: { congty: { tencongty: @congty.tencongty } }
    assert_redirected_to congty_url(@congty)
  end

  test "should destroy congty" do
    assert_difference('Congty.count', -1) do
      delete congty_url(@congty)
    end

    assert_redirected_to congties_url
  end
end
