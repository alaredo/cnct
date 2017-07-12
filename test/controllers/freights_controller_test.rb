require 'test_helper'

class FreightsControllerTest < ActionController::TestCase
  setup do
    @freight = freights(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:freights)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create freight" do
    assert_difference('Freight.count') do
      post :create, freight: { actual_amount: @freight.actual_amount, additional_info: @freight.additional_info, charged_amount: @freight.charged_amount, cross_docking_time: @freight.cross_docking_time, schedule_at: @freight.schedule_at, schedule_period: @freight.schedule_period, transit_time: @freight.transit_time, type: @freight.type }
    end

    assert_redirected_to freight_path(assigns(:freight))
  end

  test "should show freight" do
    get :show, id: @freight
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @freight
    assert_response :success
  end

  test "should update freight" do
    patch :update, id: @freight, freight: { actual_amount: @freight.actual_amount, additional_info: @freight.additional_info, charged_amount: @freight.charged_amount, cross_docking_time: @freight.cross_docking_time, schedule_at: @freight.schedule_at, schedule_period: @freight.schedule_period, transit_time: @freight.transit_time, type: @freight.type }
    assert_redirected_to freight_path(assigns(:freight))
  end

  test "should destroy freight" do
    assert_difference('Freight.count', -1) do
      delete :destroy, id: @freight
    end

    assert_redirected_to freights_path
  end
end
