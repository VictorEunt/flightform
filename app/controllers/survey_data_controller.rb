class SurveyDataController < ApplicationController
  before_action :set_survey_datum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @survey_data = SurveyDatum.all
    respond_with(@survey_data)
  end

  def show
    respond_with(@survey_datum)
  end

  def new
    @survey_datum = SurveyDatum.new
    respond_with(@survey_datum)
  end

  def edit
  end

  def create
    @survey_datum = SurveyDatum.new(survey_datum_params)
    @survey_datum.save
    respond_with(@survey_datum)
  end

  def update
    @survey_datum.update(survey_datum_params)
    respond_with(@survey_datum)
  end

  def destroy
    @survey_datum.destroy
    respond_with(@survey_datum)
  end

  private
    def set_survey_datum
      @survey_datum = SurveyDatum.find(params[:id])
    end

    def survey_datum_params
      params.require(:survey_datum).permit(:session, :question, :answer)
    end
end
