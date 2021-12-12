class GoalsController < ApplicationController
  #before_action :set_goal, only: [:show, :destroy]

  def index
    @goals = Goal.all
    render json: @goals
  end

  def show
    render json: @goal
  end

  def create
    @goal = Goal.create(goal_params)
    if @goal.save
    render json: @goal, status: :created, location: @goal
    else
      render json: {error: "Comment could not be created"}
    end
  end

  def update
    if @goal.update(goal_params)
      render json: @goal
    else
      render json: {error: "Looks like something went wrong"}
    end
  end

  def destroy
    @goal = Goal.find(params[:id])
    if @goal.present?
      @goal.destroy
    end
    render json: @goal
  end

  private

    #def set_goal
     # @goal = Goal.find(params[:id])
    #end

    def goal_params
      params.require(:goal).permit(:title, :description, :completed)
    end
end
