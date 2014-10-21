class AddTeacherIdToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :teacher_id, :reference
  end
end  
