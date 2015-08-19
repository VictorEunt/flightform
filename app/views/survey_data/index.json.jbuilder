json.array!(@survey_data) do |survey_datum|
  json.extract! survey_datum, :id, :session, :question, :answer
  json.url survey_datum_url(survey_datum, format: :json)
end
