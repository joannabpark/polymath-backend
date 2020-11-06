class LessonsController < ApplicationController

    def index
        @lessons = Lesson.all 
        render json: @lessons
    end

    def show
        @lesson = Lesson.find(params[:id])
        render json: @lesson
    end

    def create
        @lesson = Lesson.new(lesson_params)
      if @lesson.save
           render json: @lesson
      else
           render json: @lesson.errors
      end
    end

    def update
        @lesson = Lesson.find(params[:id])
        @lesson.update(lesson_params)
        render json: @lesson
    end

    def destroy
        @lesson = Lesson.find(params[:id])
        @lesson.destroy
        render json: { message: 'success'}
    end

    private

    def lesson_params
        params.require(:lesson).permit(:date, :description, :is_completed, :provider_id, :receiver_id, :created_at, :skill_id, :skill_name)
    end

end
