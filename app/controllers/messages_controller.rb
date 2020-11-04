class MessagesController < ApplicationController

    def index
        @messages = Message.all 
        render json: @messages
    end

    def show
        @message = Message.find(params[:id])
        render json: @message
    end

    def create
        @message = Message.new(message_params)
        @message.save
         render json: @message
    end

    def update
        @message = Message.find(params[:id])
        @skill.update(skill_params)
        render json: @message
    end

    def destroy
        @message = Message.find(params[:id])
        @message.destroy
        render json: { message: 'success'}
    end

    private

    def message_params
        params.require(:message).permit(:content, :sender_id, :recipient_id, :created_at, :updated_at)
    end

end
