module Api::V1
  class ExercisesController < ApplicationController
    def index
      @exercises = Exercise.all
      render json: @exercises
    end

    def show
      @exercise = Exercise.find(params[:id])
      render json: @exercise
    end

    def create
      @exercise = Exercise.create(exercise_params)

      if @exercise.save
        render json: @exercise
      else
        render json: @exercise.errors.messages, status: 422
      end
    end

    private

    def exercise_params
      params.require(:exercise).permit(:title, :description, muscle_group: [])
    end
  end
end
