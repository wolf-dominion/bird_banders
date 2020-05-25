class Bird < ApplicationRecord
    has_many :bird_captures
    has_many :captures, through: :bird_captures
    has_many :memberships, through: :bird_captures
end
