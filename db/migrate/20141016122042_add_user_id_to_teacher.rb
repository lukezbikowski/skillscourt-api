class AddUserIdToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :user_id, :reference
  end
end
