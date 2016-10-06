require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get customers_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_url
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post customers_url, params: { customer: { address_others: @customer.address_others, address_pref: @customer.address_pref, birthday: @customer.birthday, mail_1: @customer.mail_1, mail_2: @customer.mail_2, name: @customer.name, phone_1: @customer.phone_1, phone_2: @customer.phone_2, postcode: @customer.postcode } }
    end

    assert_redirected_to customer_url(Customer.last)
  end

  test "should show customer" do
    get customer_url(@customer)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_url(@customer)
    assert_response :success
  end

  test "should update customer" do
    patch customer_url(@customer), params: { customer: { address_others: @customer.address_others, address_pref: @customer.address_pref, birthday: @customer.birthday, mail_1: @customer.mail_1, mail_2: @customer.mail_2, name: @customer.name, phone_1: @customer.phone_1, phone_2: @customer.phone_2, postcode: @customer.postcode } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete customer_url(@customer)
    end

    assert_redirected_to customers_url
  end
end
