class CompletionsController < ApplicationController
  def create
    # touch sets timestamp to current_time and persists
    current_user.todos.find(params[:todo_id]).touch :completed_at
    redirect_to todos_path
  end
end
