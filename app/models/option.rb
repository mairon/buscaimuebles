class Option < ActiveRecord::Base
	has_and_belongs_to_many :properties
	validates :name, presence: true
	validates :name, uniqueness: true
end
