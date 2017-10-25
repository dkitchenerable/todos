class Todo < ApplicationRecord
  def completed?
    # active record check if field nil
    completed_at?
  end

  def complete!
    touch :completed_at
  end
end
