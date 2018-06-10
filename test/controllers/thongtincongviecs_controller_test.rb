require 'test_helper'

class ThongtincongviecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thongtincongviec = thongtincongviecs(:one)
  end

  test "should get index" do
    get thongtincongviecs_url
    assert_response :success
  end

  test "should get new" do
    get new_thongtincongviec_url
    assert_response :success
  end

  test "should create thongtincongviec" do
    assert_difference('Thongtincongviec.count') do
      post thongtincongviecs_url, params: { thongtincongviec: { chedoluong: @thongtincongviec.chedoluong, congty_id: @thongtincongviec.congty_id, diadiem_id: @thongtincongviec.diadiem_id, mavitri: @thongtincongviec.mavitri, mota: @thongtincongviec.mota, sohoso: @thongtincongviec.sohoso, tencongviec: @thongtincongviec.tencongviec, thoihannophoso: @thongtincongviec.thoihannophoso, thongtinvitri: @thongtincongviec.thongtinvitri, vitricongviec_id: @thongtincongviec.vitricongviec_id, yeucau: @thongtincongviec.yeucau } }
    end

    assert_redirected_to thongtincongviec_url(Thongtincongviec.last)
  end

  test "should show thongtincongviec" do
    get thongtincongviec_url(@thongtincongviec)
    assert_response :success
  end

  test "should get edit" do
    get edit_thongtincongviec_url(@thongtincongviec)
    assert_response :success
  end

  test "should update thongtincongviec" do
    patch thongtincongviec_url(@thongtincongviec), params: { thongtincongviec: { chedoluong: @thongtincongviec.chedoluong, congty_id: @thongtincongviec.congty_id, diadiem_id: @thongtincongviec.diadiem_id, mavitri: @thongtincongviec.mavitri, mota: @thongtincongviec.mota, sohoso: @thongtincongviec.sohoso, tencongviec: @thongtincongviec.tencongviec, thoihannophoso: @thongtincongviec.thoihannophoso, thongtinvitri: @thongtincongviec.thongtinvitri, vitricongviec_id: @thongtincongviec.vitricongviec_id, yeucau: @thongtincongviec.yeucau } }
    assert_redirected_to thongtincongviec_url(@thongtincongviec)
  end

  test "should destroy thongtincongviec" do
    assert_difference('Thongtincongviec.count', -1) do
      delete thongtincongviec_url(@thongtincongviec)
    end

    assert_redirected_to thongtincongviecs_url
  end
end
