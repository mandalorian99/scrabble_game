class LeaderBoard < ApplicationRecord
  belongs_to :user, foreign_key: :id
end