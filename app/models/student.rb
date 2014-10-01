class Student < ActiveRecord::Base
  validates :name, uniqueness: true
end
