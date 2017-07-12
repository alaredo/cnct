require 'test_helper'

class BillingAddressesControllerTest < ActionController::TestCase
  setup do
    @billing_address = billing_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:billing_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create billing_address" do
    assert_difference('BillingAddress.count') do
      post :create, billing_address: { address: @billing_address.address, city: @billing_address.city, complement: @billing_address.complement, country_id: @billing_address.country_id, number: @billing_address.number, quarter: @billing_address.quarter, reference: @billing_address.reference, state: @billing_address.state, zip_code: @billing_address.zip_code }
    end

    assert_redirected_to billing_address_path(assigns(:billing_address))
  end

  test "should show billing_address" do
    get :show, id: @billing_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @billing_address
    assert_response :success
  end

  test "should update billing_address" do
    patch :update, id: @billing_address, billing_address: { address: @billing_address.address, city: @billing_address.city, complement: @billing_address.complement, country_id: @billing_address.country_id, number: @billing_address.number, quarter: @billing_address.quarter, reference: @billing_address.reference, state: @billing_address.state, zip_code: @billing_address.zip_code }
    assert_redirected_to billing_address_path(assigns(:billing_address))
  end

  test "should destroy billing_address" do
    assert_difference('BillingAddress.count', -1) do
      delete :destroy, id: @billing_address
    end

    assert_redirected_to billing_addresses_path
  end
end
