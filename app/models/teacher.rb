class Teacher < ActiveRecord::Base
  validates :name, uniqueness: true
end
