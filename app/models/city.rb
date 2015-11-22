class City < ActiveRecord::Base
  belongs_to :country
  belongs_to :state

	validates :name, presence: true
	validates :name, uniqueness: true

end
