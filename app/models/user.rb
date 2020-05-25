class User < ApplicationRecord
    has_secure_password
    has_many :memberships
    has_many :research_groups, through: :memberships
end
