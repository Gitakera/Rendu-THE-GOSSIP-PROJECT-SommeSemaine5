class Gossip < ApplicationRecord
	belongs_to :user
	has_many :like
	has_many :comment
	has_many :tags, through: :bromancebe
end
