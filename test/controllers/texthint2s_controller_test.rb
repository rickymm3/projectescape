require 'test_helper'

class Texthint2sControllerTest < ActionController::TestCase
  setup do
    @texthint2 = texthint2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:texthint2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create texthint2" do
    assert_difference('Texthint2.count') do
      post :create, texthint2: {  }
    end

    assert_redirected_to texthint2_path(assigns(:texthint2))
  end

  test "should show texthint2" do
    get :show, id: @texthint2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @texthint2
    assert_response :success
  end

  test "should update texthint2" do
    patch :update, id: @texthint2, texthint2: {  }
    assert_redirected_to texthint2_path(assigns(:texthint2))
  end

  test "should destroy texthint2" do
    assert_difference('Texthint2.count', -1) do
      delete :destroy, id: @texthint2
    end

    assert_redirected_to texthint2s_path
  end
end
