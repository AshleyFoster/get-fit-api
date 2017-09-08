class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.string :muscle_group, null: false

      t.timestamps
    end
  end
end
