class User < ApplicationRecord
    has_secure_password
    validates_presence_of :password, :on => :create

    has_many :memberships
    has_many :research_groups, through: :memberships
end
