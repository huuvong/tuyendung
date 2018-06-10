require 'test_helper'

class ThongtincanhansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thongtincanhan = thongtincanhans(:one)
  end

  test "should get index" do
    get thongtincanhans_url
    assert_response :success
  end

  test "should get new" do
    get new_thongtincanhan_url
    assert_response :success
  end

  test "should create thongtincanhan" do
    assert_difference('Thongtincanhan.count') do
      post thongtincanhans_url, params: { thongtincanhan: { email: @thongtincanhan.email, filedinhkem: @thongtincanhan.filedinhkem, hovaten: @thongtincanhan.hovaten, sodienthoai: @thongtincanhan.sodienthoai, thongtincongviec_id: @thongtincanhan.thongtincongviec_id, vitricongviec_id: @thongtincanhan.vitricongviec_id } }
    end

    assert_redirected_to thongtincanhan_url(Thongtincanhan.last)
  end

  test "should show thongtincanhan" do
    get thongtincanhan_url(@thongtincanhan)
    assert_response :success
  end

  test "should get edit" do
    get edit_thongtincanhan_url(@thongtincanhan)
    assert_response :success
  end

  test "should update thongtincanhan" do
    patch thongtincanhan_url(@thongtincanhan), params: { thongtincanhan: { email: @thongtincanhan.email, filedinhkem: @thongtincanhan.filedinhkem, hovaten: @thongtincanhan.hovaten, sodienthoai: @thongtincanhan.sodienthoai, thongtincongviec_id: @thongtincanhan.thongtincongviec_id, vitricongviec_id: @thongtincanhan.vitricongviec_id } }
    assert_redirected_to thongtincanhan_url(@thongtincanhan)
  end

  test "should destroy thongtincanhan" do
    assert_difference('Thongtincanhan.count', -1) do
      delete thongtincanhan_url(@thongtincanhan)
    end

    assert_redirected_to thongtincanhans_url
  end
end
