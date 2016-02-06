require 'test_helper'

class CodersControllerTest < ActionController::TestCase
  setup do
    @coder = coders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coder" do
    assert_difference('Coder.count') do
      post :create, coder: { facebook_username: @coder.facebook_username, github_username: @coder.github_username, name: @coder.name, twitter_handle: @coder.twitter_handle }
    end

    assert_redirected_to coder_path(assigns(:coder))
  end

  test "should show coder" do
    get :show, id: @coder
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coder
    assert_response :success
  end

  test "should update coder" do
    patch :update, id: @coder, coder: { facebook_username: @coder.facebook_username, github_username: @coder.github_username, name: @coder.name, twitter_handle: @coder.twitter_handle }
    assert_redirected_to coder_path(assigns(:coder))
  end

  test "should destroy coder" do
    assert_difference('Coder.count', -1) do
      delete :destroy, id: @coder
    end

    assert_redirected_to coders_path
  end
end
