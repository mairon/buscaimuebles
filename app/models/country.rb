class Country < ActiveRecord::Base
  has_many :states
  has_many :cities

	validates :name, :country_id, :state_id, presence: true
	validates :name, uniqueness: true
end
