require 'test_helper'

class PropertiesControllerTest < ActionController::TestCase
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post :create, property: { address: @property.address, area: @property.area, bath_rooms: @property.bath_rooms, bed_rooms: @property.bed_rooms, city_id: @property.city_id, county_id: @property.county_id, description: @property.description, interest: @property.interest, latitude: @property.latitude, longitude: @property.longitude, name: @property.name, price: @property.price, property_option_id: @property.property_option_id, property_type_id: @property.property_type_id, state_id: @property.state_id, status: @property.status, user_id: @property.user_id, video_url: @property.video_url }
    end

    assert_redirected_to property_path(assigns(:property))
  end

  test "should show property" do
    get :show, id: @property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property
    assert_response :success
  end

  test "should update property" do
    patch :update, id: @property, property: { address: @property.address, area: @property.area, bath_rooms: @property.bath_rooms, bed_rooms: @property.bed_rooms, city_id: @property.city_id, county_id: @property.county_id, description: @property.description, interest: @property.interest, latitude: @property.latitude, longitude: @property.longitude, name: @property.name, price: @property.price, property_option_id: @property.property_option_id, property_type_id: @property.property_type_id, state_id: @property.state_id, status: @property.status, user_id: @property.user_id, video_url: @property.video_url }
    assert_redirected_to property_path(assigns(:property))
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete :destroy, id: @property
    end

    assert_redirected_to properties_path
  end
end
