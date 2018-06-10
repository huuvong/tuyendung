require 'test_helper'

class DiadiemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diadiem = diadiems(:one)
  end

  test "should get index" do
    get diadiems_url
    assert_response :success
  end

  test "should get new" do
    get new_diadiem_url
    assert_response :success
  end

  test "should create diadiem" do
    assert_difference('Diadiem.count') do
      post diadiems_url, params: { diadiem: { tendiadiem: @diadiem.tendiadiem } }
    end

    assert_redirected_to diadiem_url(Diadiem.last)
  end

  test "should show diadiem" do
    get diadiem_url(@diadiem)
    assert_response :success
  end

  test "should get edit" do
    get edit_diadiem_url(@diadiem)
    assert_response :success
  end

  test "should update diadiem" do
    patch diadiem_url(@diadiem), params: { diadiem: { tendiadiem: @diadiem.tendiadiem } }
    assert_redirected_to diadiem_url(@diadiem)
  end

  test "should destroy diadiem" do
    assert_difference('Diadiem.count', -1) do
      delete diadiem_url(@diadiem)
    end

    assert_redirected_to diadiems_url
  end
end
