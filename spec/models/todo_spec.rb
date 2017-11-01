require 'rails_helper'

describe Todo, "#completed?" do
  it "returns true if completed at is set" do
    todo = Todo.new(completed_at: Time.current)
    expect(todo).to be_completed
  end

  it "returns false if completed at is null" do
    todo = Todo.new
    expect(todo).to_not be_completed
  end  
end

describe Todo, "#complete!" do
  it "update completed_at" do
    todo = Todo.create!(completed_at: nil)

    todo.complete!

    todo.reload
    expect(todo).to be_completed
  end
end

describe Todo, "#uncomplete!" do
  it "update completed_at to nil" do
    todo = Todo.create!(completed_at: Time.current)

    todo.uncomplete!

    todo.reload
    expect(todo).to_not be_completed
  end
end
