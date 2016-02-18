require 'test_helper'

class AdressesControllerTest < ActionController::TestCase
  setup do
    @adress = adresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:adresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create adress" do
    assert_difference('Adress.count') do
      post :create, adress: { city: @adress.city, district: @adress.district, number: @adress.number, state: @adress.state, street: @adress.street }
    end

    assert_redirected_to adress_path(assigns(:adress))
  end

  test "should show adress" do
    get :show, id: @adress
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @adress
    assert_response :success
  end

  test "should update adress" do
    patch :update, id: @adress, adress: { city: @adress.city, district: @adress.district, number: @adress.number, state: @adress.state, street: @adress.street }
    assert_redirected_to adress_path(assigns(:adress))
  end

  test "should destroy adress" do
    assert_difference('Adress.count', -1) do
      delete :destroy, id: @adress
    end

    assert_redirected_to adresses_path
  end
end
