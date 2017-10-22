class TodosController < ApplicationController
  def index      
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    Todo.create({title: todo_params})
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).require(:title)
  end
end
