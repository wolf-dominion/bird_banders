class BirdCapture < ApplicationRecord
    belongs_to :bird
    belongs_to :capture
    belongs_to :user
end
