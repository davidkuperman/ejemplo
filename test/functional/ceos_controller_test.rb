require 'test_helper'

class CeosControllerTest < ActionController::TestCase
  setup do
    @ceo = ceos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ceos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ceo" do
    assert_difference('Ceo.count') do
      post :create, :ceo => @ceo.attributes
    end

    assert_redirected_to ceo_path(assigns(:ceo))
  end

  test "should show ceo" do
    get :show, :id => @ceo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ceo.to_param
    assert_response :success
  end

  test "should update ceo" do
    put :update, :id => @ceo.to_param, :ceo => @ceo.attributes
    assert_redirected_to ceo_path(assigns(:ceo))
  end

  test "should destroy ceo" do
    assert_difference('Ceo.count', -1) do
      delete :destroy, :id => @ceo.to_param
    end

    assert_redirected_to ceos_path
  end
end
