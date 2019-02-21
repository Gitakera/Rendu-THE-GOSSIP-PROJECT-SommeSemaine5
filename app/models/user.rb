class User < ApplicationRecord
	belongs_to :citie
	has_many :likes
	has_many :gossips
	has_many :comments
	has_many :ucomments
	has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
    has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
    has_secure_password
end
