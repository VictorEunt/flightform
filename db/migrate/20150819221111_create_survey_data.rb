class CreateSurveyData < ActiveRecord::Migration
  def change
    create_table :survey_data do |t|
      t.string :session
      t.integer :question
      t.string :answer

      t.timestamps
    end
  end
end
