class Rating < ActiveRecord::Base
  belongs_to :videos
  belongs_to :users
  validates :value, :video_id, :user_id, presence: true
  validates :video_id, uniqueness: { scope: :user_id }
  validates :value, inclusion: { in: 1..5, message: "must be between 1 and 5" }
end
