class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.datetime :time
      t.string :pet_id
      t.string :integer
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
