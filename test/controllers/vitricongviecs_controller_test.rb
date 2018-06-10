require 'test_helper'

class VitricongviecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vitricongviec = vitricongviecs(:one)
  end

  test "should get index" do
    get vitricongviecs_url
    assert_response :success
  end

  test "should get new" do
    get new_vitricongviec_url
    assert_response :success
  end

  test "should create vitricongviec" do
    assert_difference('Vitricongviec.count') do
      post vitricongviecs_url, params: { vitricongviec: { tenvitri: @vitricongviec.tenvitri } }
    end

    assert_redirected_to vitricongviec_url(Vitricongviec.last)
  end

  test "should show vitricongviec" do
    get vitricongviec_url(@vitricongviec)
    assert_response :success
  end

  test "should get edit" do
    get edit_vitricongviec_url(@vitricongviec)
    assert_response :success
  end

  test "should update vitricongviec" do
    patch vitricongviec_url(@vitricongviec), params: { vitricongviec: { tenvitri: @vitricongviec.tenvitri } }
    assert_redirected_to vitricongviec_url(@vitricongviec)
  end

  test "should destroy vitricongviec" do
    assert_difference('Vitricongviec.count', -1) do
      delete vitricongviec_url(@vitricongviec)
    end

    assert_redirected_to vitricongviecs_url
  end
end
