class TodosController < ApplicationController

  def index
    @goal = Goal.find_by(params[:id])
    @todos = @goal.todos.all

    render json: @todos
  end

  def show
    @todo = Todo.find(params[:id])
    render json: @todo
  end

  def create
    @goal = Goal.find(params[:goal_id])
    @todo = @goal.todos.create(todo_params)

    if @todo.save
      render json: @todo, status: :created, location: @todo
    else
      render json: {error: "Looks like something went wrong"}
    end
  end

  def update
    if @todo.update(todo_params)
      render json: @todo
    else
      render json: @todo.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy
    render json: @todo
  end

  private

    def todo_params
      params.require(:todo).permit(:title, :completed)
    end
end
