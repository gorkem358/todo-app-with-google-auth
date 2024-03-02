class Todo < ApplicationRecord
  #validates :title,:description, presence:  true, acceptance: {message: "Title and Description Must Be Filled!"}
  belongs_to :user

  scope :by_user, lambda { |user|
    where(:user_id => user.id)
  }
end
