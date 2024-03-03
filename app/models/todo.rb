class Todo < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  self.per_page = 5

  scope :by_user, lambda { |user|
    where(:user_id => user.id)
  }
end
