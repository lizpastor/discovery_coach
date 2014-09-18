require 'test_helper'

class HypothesesControllerTest < ActionController::TestCase
  setup do
    @hypothesis = hypotheses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hypotheses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hypothesis" do
    assert_difference('Hypothesis.count') do
      post :create, hypothesis: { change: @hypothesis.change, date: @hypothesis.date, how_long: @hypothesis.how_long, how_much: @hypothesis.how_much, impact: @hypothesis.impact, name: @hypothesis.name, who: @hypothesis.who }
    end

    assert_redirected_to hypothesis_path(assigns(:hypothesis))
  end

  test "should show hypothesis" do
    get :show, id: @hypothesis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hypothesis
    assert_response :success
  end

  test "should update hypothesis" do
    patch :update, id: @hypothesis, hypothesis: { change: @hypothesis.change, date: @hypothesis.date, how_long: @hypothesis.how_long, how_much: @hypothesis.how_much, impact: @hypothesis.impact, name: @hypothesis.name, who: @hypothesis.who }
    assert_redirected_to hypothesis_path(assigns(:hypothesis))
  end

  test "should destroy hypothesis" do
    assert_difference('Hypothesis.count', -1) do
      delete :destroy, id: @hypothesis
    end

    assert_redirected_to hypotheses_path
  end
end
