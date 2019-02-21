class Tag < ApplicationRecord
	has_many :gossips, through: :bromancebe
end
