class AddDeadlineAtToTodos < ActiveRecord::Migration[7.1]
  def change
    add_column :todos, :deadline_at, :datetime
  end
end
