require "test_helper"

class RxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rx = rxes(:one)
  end

  test "should get index" do
    get rxes_url, as: :json
    assert_response :success
  end

  test "should create rx" do
    assert_difference("Rx.count") do
      post rxes_url, params: { rx: { OD_ADD: @rx.OD_ADD, OD_AXIS: @rx.OD_AXIS, OD_BASE: @rx.OD_BASE, OD_CYL: @rx.OD_CYL, OD_PRISM: @rx.OD_PRISM, OD_SPH: @rx.OD_SPH, OS_ADD: @rx.OS_ADD, OS_AXIS: @rx.OS_AXIS, OS_BASE: @rx.OS_BASE, OS_CYL: @rx.OS_CYL, OS_PRISM: @rx.OS_PRISM, OS_SPHERE: @rx.OS_SPHERE } }, as: :json
    end

    assert_response :created
  end

  test "should show rx" do
    get rx_url(@rx), as: :json
    assert_response :success
  end

  test "should update rx" do
    patch rx_url(@rx), params: { rx: { OD_ADD: @rx.OD_ADD, OD_AXIS: @rx.OD_AXIS, OD_BASE: @rx.OD_BASE, OD_CYL: @rx.OD_CYL, OD_PRISM: @rx.OD_PRISM, OD_SPH: @rx.OD_SPH, OS_ADD: @rx.OS_ADD, OS_AXIS: @rx.OS_AXIS, OS_BASE: @rx.OS_BASE, OS_CYL: @rx.OS_CYL, OS_PRISM: @rx.OS_PRISM, OS_SPHERE: @rx.OS_SPHERE } }, as: :json
    assert_response :success
  end

  test "should destroy rx" do
    assert_difference("Rx.count", -1) do
      delete rx_url(@rx), as: :json
    end

    assert_response :no_content
  end
end
