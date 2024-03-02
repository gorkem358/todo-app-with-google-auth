class CreateTodos < ActiveRecord::Migration[7.1]
  def change
    create_table :todos do |t|
      t.belongs_to :user
      t.string :title
      t.string :description
      t.boolean :is_completed
      t.timestamps
    end
  end
end
