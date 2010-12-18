require 'test_helper'

class DarkosControllerTest < ActionController::TestCase
  setup do
    @darko = darkos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:darkos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create darko" do
    assert_difference('Darko.count') do
      post :create, :darko => @darko.attributes
    end

    assert_redirected_to darko_path(assigns(:darko))
  end

  test "should show darko" do
    get :show, :id => @darko.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @darko.to_param
    assert_response :success
  end

  test "should update darko" do
    put :update, :id => @darko.to_param, :darko => @darko.attributes
    assert_redirected_to darko_path(assigns(:darko))
  end

  test "should destroy darko" do
    assert_difference('Darko.count', -1) do
      delete :destroy, :id => @darko.to_param
    end

    assert_redirected_to darkos_path
  end
end
