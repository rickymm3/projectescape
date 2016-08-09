require 'test_helper'

class TexthintsControllerTest < ActionController::TestCase
  setup do
    @texthint = texthints(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:texthints)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create texthint" do
    assert_difference('Texthint.count') do
      post :create, texthint: { message: @texthint.message }
    end

    assert_redirected_to texthint_path(assigns(:texthint))
  end

  test "should show texthint" do
    get :show, id: @texthint
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @texthint
    assert_response :success
  end

  test "should update texthint" do
    patch :update, id: @texthint, texthint: { message: @texthint.message }
    assert_redirected_to texthint_path(assigns(:texthint))
  end

  test "should destroy texthint" do
    assert_difference('Texthint.count', -1) do
      delete :destroy, id: @texthint
    end

    assert_redirected_to texthints_path
  end
end
