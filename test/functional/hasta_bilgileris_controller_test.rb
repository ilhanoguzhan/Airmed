require 'test_helper'

class HastaBilgilerisControllerTest < ActionController::TestCase
  setup do
    @hasta_bilgileri = hasta_bilgileris(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hasta_bilgileris)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hasta_bilgileri" do
    assert_difference('HastaBilgileri.count') do
      post :create, hasta_bilgileri: @hasta_bilgileri.attributes
    end

    assert_redirected_to hasta_bilgileri_path(assigns(:hasta_bilgileri))
  end

  test "should show hasta_bilgileri" do
    get :show, id: @hasta_bilgileri.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hasta_bilgileri.to_param
    assert_response :success
  end

  test "should update hasta_bilgileri" do
    put :update, id: @hasta_bilgileri.to_param, hasta_bilgileri: @hasta_bilgileri.attributes
    assert_redirected_to hasta_bilgileri_path(assigns(:hasta_bilgileri))
  end

  test "should destroy hasta_bilgileri" do
    assert_difference('HastaBilgileri.count', -1) do
      delete :destroy, id: @hasta_bilgileri.to_param
    end

    assert_redirected_to hasta_bilgileris_path
  end
end
