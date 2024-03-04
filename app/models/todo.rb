class Todo < ApplicationRecord
  validates :title, :deadline_at, presence: true
  belongs_to :user
  self.per_page = 5

  #in order to fetch records by importance
  default_scope {order(is_completed: :asc, deadline_at: :asc)}


  scope :by_user, lambda { |user|
    where(:user_id => user.id)
  }
end
