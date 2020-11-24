class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :subject,          null: false
      t.integer :unit,            null: false
      t.integer :priod_genre_id,  null: false
      t.integer :grade_genre_id,  null: false
      t.integer :week_genre_id,   null: false
      t.integer :time_genre_id,   null: false
      t.integer :select_genre_id, null: false
      t.integer :result_genre_id
      t.references :user,         foreign_key: true
      t.timestamps
    end
  end
end
