require 'test_helper'

class TesturlsControllerTest < ActionController::TestCase
  setup do
    @testurl = testurls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testurls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testurl" do
    assert_difference('Testurl.count') do
      post :create, :testurl => @testurl.attributes
    end

    assert_redirected_to testurl_path(assigns(:testurl))
  end

  test "should show testurl" do
    get :show, :id => @testurl.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @testurl.to_param
    assert_response :success
  end

  test "should update testurl" do
    put :update, :id => @testurl.to_param, :testurl => @testurl.attributes
    assert_redirected_to testurl_path(assigns(:testurl))
  end

  test "should destroy testurl" do
    assert_difference('Testurl.count', -1) do
      delete :destroy, :id => @testurl.to_param
    end

    assert_redirected_to testurls_path
  end
end
