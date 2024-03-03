class TodosController < ApplicationController
  before_action :require_login
  def index
    if current_user
      @todos = current_user.todos.all
    end
  end

  def create
    @todo = current_user.todos.create(todo_params)
    if @todo.valid?
      redirect_to root_path
    end
  end

  def edit
    @todo = Todo.by_user(current_user).find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to todos_path
  end

  def update
    @todo = Todo.by_user(current_user).find(params[:id])
    if @todo.update(todo_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def toggle
    @todo = Todo.find(params[:id])
    @todo.update(is_completed: !@todo.is_completed)

    redirect_to todos_path
  end

  def todo_params
    params.require(:todo).permit(:title, :description, :is_completed)
  end

  def destroy
    @todo = Todo.by_user(current_user).find(params[:id])
    if @todo.destroy
      redirect_to root_path
    end
  end
end