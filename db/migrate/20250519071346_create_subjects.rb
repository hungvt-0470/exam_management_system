class CreateSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.references :user, null: false, foreign_key: true, type: :bigint

      t.timestamps
    end
    add_index :subjects, :name, unique: true
  end
end
