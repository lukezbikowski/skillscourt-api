class Course < ActiveRecord::Base
  belongs_to :teacher
  
  validates :name, uniqueness: true
  validates :teacher_id, presence:true
end
