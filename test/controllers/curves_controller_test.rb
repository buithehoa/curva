require 'test_helper'

class CurvesControllerTest < ActionController::TestCase
  setup do
    @curf = curves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:curves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curf" do
    assert_difference('Curve.count') do
      post :create, curf: { answer: @curf.answer, question: @curf.question, status: @curf.status }
    end

    assert_redirected_to curf_path(assigns(:curf))
  end

  test "should show curf" do
    get :show, id: @curf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @curf
    assert_response :success
  end

  test "should update curf" do
    patch :update, id: @curf, curf: { answer: @curf.answer, question: @curf.question, status: @curf.status }
    assert_redirected_to curf_path(assigns(:curf))
  end

  test "should destroy curf" do
    assert_difference('Curve.count', -1) do
      delete :destroy, id: @curf
    end

    assert_redirected_to curves_path
  end
end
