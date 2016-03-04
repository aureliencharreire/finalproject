require 'test_helper'

class ProgramClientsControllerTest < ActionController::TestCase
  setup do
    @program_client = program_clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:program_clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create program_client" do
    assert_difference('ProgramClient.count') do
      post :create, program_client: {  }
    end

    assert_redirected_to program_client_path(assigns(:program_client))
  end

  test "should show program_client" do
    get :show, id: @program_client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @program_client
    assert_response :success
  end

  test "should update program_client" do
    patch :update, id: @program_client, program_client: {  }
    assert_redirected_to program_client_path(assigns(:program_client))
  end

  test "should destroy program_client" do
    assert_difference('ProgramClient.count', -1) do
      delete :destroy, id: @program_client
    end

    assert_redirected_to program_clients_path
  end
end
