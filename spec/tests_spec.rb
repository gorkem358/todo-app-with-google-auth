require 'rails_helper'

describe Todo, type: :model do

  # Test 1: Valid with valid attributes and user
  it "should be valid with valid attributes and user" do
    user = User.create(username: "Test User")
    todo = Todo.new(title: "Test Todo", description: "This is a test todo", is_completed: false, deadline_at: Time.now, user: user)
    expect(todo).to be_valid
  end

  # Test 2: Not valid without user_id
  it "should not be valid without user_id" do
    todo = Todo.new(title: "Test Todo", description: "This is a test todo", is_completed: false, deadline_at: Time.now)
    expect(todo).not_to be_valid
  end

  # Test 3: Not valid with invalid user_id
  it "should not be valid with invalid user_id" do
    todo = Todo.new(title: "Test Todo", description: "This is a test todo", is_completed: false, deadline_at: Time.now, user_id: -1)
    expect(todo).not_to be_valid
  end

  # Test 4: Belongs to a user
  it "should belong to a user" do
    user = User.create(username: "Test User")
    todo = Todo.create(title: "Test Todo", description: "This is a test todo", is_completed: false, deadline_at: Time.now, user: user)
    expect(todo.user).to eq(user)
  end

  # Test 5: Not valid without title
  it "should not be valid without title" do
    user = User.create(username: "Test User")
    todo = Todo.new(description: "This is a test todo", is_completed: false, deadline_at: Time.now, user: user)
    expect(todo).not_to be_valid
  end

  # Test 6: Not valid without deadline_at
  it "should not be valid without deadline_at" do
    user = User.create(username: "Test User")
    todo = Todo.new(title: "Test Todo", description: "This is a test todo", is_completed: false, user: user)
    expect(todo).not_to be_valid
  end

  # ... remaining tests ...

end
