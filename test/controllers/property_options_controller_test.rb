require 'test_helper'

class PropertyOptionsControllerTest < ActionController::TestCase
  setup do
    @property_option = property_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_option" do
    assert_difference('PropertyOption.count') do
      post :create, property_option: { name: @property_option.name, status: @property_option.status }
    end

    assert_redirected_to property_option_path(assigns(:property_option))
  end

  test "should show property_option" do
    get :show, id: @property_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_option
    assert_response :success
  end

  test "should update property_option" do
    patch :update, id: @property_option, property_option: { name: @property_option.name, status: @property_option.status }
    assert_redirected_to property_option_path(assigns(:property_option))
  end

  test "should destroy property_option" do
    assert_difference('PropertyOption.count', -1) do
      delete :destroy, id: @property_option
    end

    assert_redirected_to property_options_path
  end
end
