class Course < ActiveRecord::Base
  belongs_to :teacher
  validates :name, uniqueness: true
end
