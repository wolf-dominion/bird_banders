class User < ApplicationRecord
    has_many :memberships
    has_many :research_groups, through: :memberships

end
