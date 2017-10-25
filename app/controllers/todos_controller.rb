class TodosController < ApplicationController
  before_filter :authenticate

  def index
    @todos = current_user.todos
  end

  def new
    @todo = Todo.new
  end

  def create
    current_user.todos.create(todo_params)
    redirect_to todos_path
  end

  def destroy
    todo = Todo.where(todo_delete_params)
    todo.destroy!
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

  def todo_delete_params
    params.require(:todo).permit(:id)
  end

end
