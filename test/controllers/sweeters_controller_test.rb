require 'test_helper'

class SweetersControllerTest < ActionController::TestCase
  setup do
    @sweeter = sweeters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sweeters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sweeter" do
    assert_difference('Sweeter.count') do
      post :create, sweeter: { password_digest: @sweeter.password_digest, username: @sweeter.username }
    end

    assert_redirected_to sweeter_path(assigns(:sweeter))
  end

  test "should show sweeter" do
    get :show, id: @sweeter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sweeter
    assert_response :success
  end

  test "should update sweeter" do
    patch :update, id: @sweeter, sweeter: { password_digest: @sweeter.password_digest, username: @sweeter.username }
    assert_redirected_to sweeter_path(assigns(:sweeter))
  end

  test "should destroy sweeter" do
    assert_difference('Sweeter.count', -1) do
      delete :destroy, id: @sweeter
    end

    assert_redirected_to sweeters_path
  end
end
