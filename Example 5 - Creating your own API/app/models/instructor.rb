class Instructor < ActiveRecord::Base

	validates :name, presence: true
	has_many :students
end
