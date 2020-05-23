class Bird < ApplicationRecord
    has_many :bird_captures
    has_many :captures, through: :bird_captures
    has_many :users, through: :bird_captures
end
