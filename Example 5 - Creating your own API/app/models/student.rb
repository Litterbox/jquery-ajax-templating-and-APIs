class Student < ActiveRecord::Base
  belongs_to :instructor

	validates :name, presence: true
	belongs_to :instructor
	has_many :enrollments
	has_many :courses, :through => :enrollments

end

