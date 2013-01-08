require 'test_helper'

class ThotsControllerTest < ActionController::TestCase
  setup do
    @thot = thots(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:thots)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create thot" do
    assert_difference('Thot.count') do
      post :create, thot: { content: @thot.content }
    end

    assert_redirected_to thot_path(assigns(:thot))
  end

  test "should show thot" do
    get :show, id: @thot
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @thot
    assert_response :success
  end

  test "should update thot" do
    put :update, id: @thot, thot: { content: @thot.content }
    assert_redirected_to thot_path(assigns(:thot))
  end

  test "should destroy thot" do
    assert_difference('Thot.count', -1) do
      delete :destroy, id: @thot
    end

    assert_redirected_to thots_path
  end
end
