class User < ApplicationRecord
    has_many :memberships
    has_many :research_groups, through: :memberships
    has_many :bird_captures
    has_many :birds, through: :bird_captures
    has_many :captures, through: :bird_captures
end
