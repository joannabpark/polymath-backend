class SkillsController < ApplicationController

    def index
        @skills = Skill.all 
        render json: @skills
    end

    def show
        @skill = Skill.find(params[:id])
        render json: @skill
    end

    def create
        @skill = Skill.new(skill_params)
        if @skill.save
             render json: @skill
        else
            render json: @skill.errors
        end
    end

    def update
        @skill = Skill.find(params[:id])
        @skill.update(skill_params)
        render json: @skill
    end

    def destroy
        @skill = Skill.find(params[:id])
        @skill.destroy
        render json: { message: 'success'}
    end

    private

    def skill_params
        params.require(:skill).permit(:name, :category, :description, :signed_up, :video_url, :created_at, :user_id)
    end

end