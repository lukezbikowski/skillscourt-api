class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.text :description
      t.float :rating

      t.timestamps
    end
  end
end
