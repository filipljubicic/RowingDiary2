require 'test_helper'

class ErgoSessionsControllerTest < ActionController::TestCase
  setup do
    @ergo_session = ergo_sessions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ergo_sessions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ergo_session" do
    assert_difference('ErgoSession.count') do
      post :create, ergo_session: { description: @ergo_session.description, distance: @ergo_session.distance, hr: @ergo_session.hr, notes: @ergo_session.notes, rate: @ergo_session.rate, split: @ergo_session.split, time: @ergo_session.time }
    end

    assert_redirected_to ergo_session_path(assigns(:ergo_session))
  end

  test "should show ergo_session" do
    get :show, id: @ergo_session
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ergo_session
    assert_response :success
  end

  test "should update ergo_session" do
    patch :update, id: @ergo_session, ergo_session: { description: @ergo_session.description, distance: @ergo_session.distance, hr: @ergo_session.hr, notes: @ergo_session.notes, rate: @ergo_session.rate, split: @ergo_session.split, time: @ergo_session.time }
    assert_redirected_to ergo_session_path(assigns(:ergo_session))
  end

  test "should destroy ergo_session" do
    assert_difference('ErgoSession.count', -1) do
      delete :destroy, id: @ergo_session
    end

    assert_redirected_to ergo_sessions_path
  end
end
