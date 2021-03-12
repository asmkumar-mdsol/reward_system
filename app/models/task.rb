class Task < ApplicationRecord
  belongs_to :employee

  validates :title, presence: true
  validates :reward_point, presence: true
end
