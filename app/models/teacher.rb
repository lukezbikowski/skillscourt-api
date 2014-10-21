class Teacher < ActiveRecord::Base
  belongs_to :user
  has_many :courses

  validates :name, presence: true, uniqueness: true
end
