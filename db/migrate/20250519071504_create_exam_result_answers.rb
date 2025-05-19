class CreateExamResultAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :exam_result_answers do |t|
      t.references :exam_question, null: false, foreign_key: true, type: :bigint
      t.references :exam_result, null: false, foreign_key: true, type: :bigint
      t.references :answer, null: false, foreign_key: true, type: :bigint

      t.timestamps
    end
  end
end
