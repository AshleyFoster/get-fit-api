class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find(params[:id])
  end

  def new
    @exercise = Exercise.new
  end

  def create
    @exercise = Exercise.create(exercise_params)

    if @exercise.save
      redirect_to exercises_path
    else
      flash.now[:alert] = "Unable to add exercise"
      render 'new'
    end
  end

  private

  def exercise_params
    params.require(:exercise).permit(:title, :description, muscle_group: [])
  end
end
