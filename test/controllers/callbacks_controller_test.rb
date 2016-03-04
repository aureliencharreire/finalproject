require 'test_helper'

class CallbacksControllerTest < ActionController::TestCase
  setup do
    @callback = callbacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:callbacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create callback" do
    assert_difference('Callback.count') do
      post :create, callback: { civilite: @callback.civilite, email: @callback.email, nom: @callback.nom, phone: @callback.phone, prenom: @callback.prenom, time: @callback.time }
    end

    assert_redirected_to callback_path(assigns(:callback))
  end

  test "should show callback" do
    get :show, id: @callback
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @callback
    assert_response :success
  end

  test "should update callback" do
    patch :update, id: @callback, callback: { civilite: @callback.civilite, email: @callback.email, nom: @callback.nom, phone: @callback.phone, prenom: @callback.prenom, time: @callback.time }
    assert_redirected_to callback_path(assigns(:callback))
  end

  test "should destroy callback" do
    assert_difference('Callback.count', -1) do
      delete :destroy, id: @callback
    end

    assert_redirected_to callbacks_path
  end
end
