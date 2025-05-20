class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.references :subject, null: false, foreign_key: true, type: :bigint
      t.string :name
      t.datetime :open_at
      t.datetime :close_at
      t.integer :duration_minutes
      t.integer :retries, null: false, default: 0
      t.integer :pass_ratio, null: false

      t.timestamps
    end
  end
end
