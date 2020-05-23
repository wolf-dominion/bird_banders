class Membership < ApplicationRecord
    belongs_to :user
    belongs_to :research_group
end
