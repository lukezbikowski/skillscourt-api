class Course < ActiveRecord::Base
  validates :name, uniqueness: true
end
