require 'test_helper'

class BookalawnsControllerTest < ActionController::TestCase
  setup do
    @bookalawn = bookalawns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookalawns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bookalawn" do
    assert_difference('Bookalawn.count') do
      post :create, bookalawn: { end_at: @bookalawn.end_at, lawn: @bookalawn.lawn, start_at: @bookalawn.start_at }
    end

    assert_redirected_to bookalawn_path(assigns(:bookalawn))
  end

  test "should show bookalawn" do
    get :show, id: @bookalawn
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bookalawn
    assert_response :success
  end

  test "should update bookalawn" do
    patch :update, id: @bookalawn, bookalawn: { end_at: @bookalawn.end_at, lawn: @bookalawn.lawn, start_at: @bookalawn.start_at }
    assert_redirected_to bookalawn_path(assigns(:bookalawn))
  end

  test "should destroy bookalawn" do
    assert_difference('Bookalawn.count', -1) do
      delete :destroy, id: @bookalawn
    end

    assert_redirected_to bookalawns_path
  end
end
