require 'test_helper'

class CcbcCoreControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get howtojoin" do
    get :howtojoin
    assert_response :success
  end

  test "should get whatyouneed" do
    get :whatyouneed
    assert_response :success
  end

  test "should get programme2013" do
    get :programme2013
    assert_response :success
  end

  test "should get newsletters" do
    get :newsletters
    assert_response :success
  end

  test "should get clubmatters" do
    get :clubmatters
    assert_response :success
  end

  test "should get howtogetthere" do
    get :howtogetthere
    assert_response :success
  end

  test "should get bookalawn" do
    get :bookalawn
    assert_response :success
  end

  test "should get linkstocroquetsites" do
    get :linkstocroquetsites
    assert_response :success
  end

end
