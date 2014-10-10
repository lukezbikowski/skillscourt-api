class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.datetime :starting_at
      t.float :rating

      t.timestamps
    end
  end
end
