class UserSkillsController < ApplicationController

    def index
        @user_skills = UserSkill.all 
        render json: @user_skills
    end

    def create
        @user_skill = UserSkill.new(user_skill_params)
        if @user_skill.save
            render json: @user_skill
        else
            render json: @user_skill.errors
        end
    end
    #deletes relationship between a member and a group
    def destroy
        @user_skill = UserSkill.find(params[:id])
        @user_skill.destroy
        render json: { message: 'success'}
    end

    private

    def user_skill_params
        params.require(:note).permit(:user_id, :skill_id)
    end


end
