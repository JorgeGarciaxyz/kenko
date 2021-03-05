class CreateDiseases < ActiveRecord::Migration[6.1]
  def change
    create_table :diseases do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :symptoms
      t.text :notes
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
