require 'test_helper'

class CardataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cardatum = cardata(:one)
  end

  test "should get index" do
    get cardata_index_url
    assert_response :success
  end

  test "should get new" do
    get new_cardatum_url
    assert_response :success
  end

  test "should create cardatum" do
    assert_difference('Cardata.count') do
      post cardata_index_url, params: { cardatum: { base_price: @cardatum.base_price, battery_capacity: @cardatum.battery_capacity, name: @cardatum.name, range: @cardatum.range } }
    end

    assert_redirected_to cardatum_url(Cardata.last)
  end

  test "should show cardatum" do
    get cardatum_url(@cardatum)
    assert_response :success
  end

  test "should get edit" do
    get edit_cardatum_url(@cardatum)
    assert_response :success
  end

  test "should update cardatum" do
    patch cardatum_url(@cardatum), params: { cardatum: { base_price: @cardatum.base_price, battery_capacity: @cardatum.battery_capacity, name: @cardatum.name, range: @cardatum.range } }
    assert_redirected_to cardatum_url(@cardatum)
  end

  test "should destroy cardatum" do
    assert_difference('Cardata.count', -1) do
      delete cardatum_url(@cardatum)
    end

    assert_redirected_to cardata_index_url
  end
end
