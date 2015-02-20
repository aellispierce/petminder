class ChangeTaskPetIdType < ActiveRecord::Migration
  def change
    change_column :tasks, :pet_id, :integer
  end
end
