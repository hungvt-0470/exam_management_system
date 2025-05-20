class CreateExamResults < ActiveRecord::Migration[7.0]
  def change
    create_table :exam_results do |t|
      t.references :exam, null: false, foreign_key: true, type: :bigint
      t.references :user, null: false, foreign_key: true, type: :bigint
      t.integer :score, null: false, default: 0
      t.string :status, null: false, default: "pending"
      t.integer :attempt, default: 0

      t.timestamps
    end
  end
end
