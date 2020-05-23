class Capture < ApplicationRecord
    has_many :bird_captures
    has_many :birds, through: :bird_captures
    has_many :users, through: :bird_captures
end
