class Membership < ApplicationRecord
    belongs_to :user
    belongs_to :research_group
    has_many :bird_captures
    has_many :birds, through: :bird_captures
    has_many :captures, through: :bird_captures
end
