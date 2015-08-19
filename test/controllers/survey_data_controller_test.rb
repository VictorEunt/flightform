require 'test_helper'

class SurveyDataControllerTest < ActionController::TestCase
  setup do
    @survey_datum = survey_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_datum" do
    assert_difference('SurveyDatum.count') do
      post :create, survey_datum: { answer: @survey_datum.answer, question: @survey_datum.question, session: @survey_datum.session }
    end

    assert_redirected_to survey_datum_path(assigns(:survey_datum))
  end

  test "should show survey_datum" do
    get :show, id: @survey_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey_datum
    assert_response :success
  end

  test "should update survey_datum" do
    patch :update, id: @survey_datum, survey_datum: { answer: @survey_datum.answer, question: @survey_datum.question, session: @survey_datum.session }
    assert_redirected_to survey_datum_path(assigns(:survey_datum))
  end

  test "should destroy survey_datum" do
    assert_difference('SurveyDatum.count', -1) do
      delete :destroy, id: @survey_datum
    end

    assert_redirected_to survey_data_path
  end
end
