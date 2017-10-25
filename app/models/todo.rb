class Todo < ApplicationRecord
  def completed?
    # active record check if field nil
    completed_at?
  end
end
