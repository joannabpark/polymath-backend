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
        if @message.save
            render json: @message
        else
            render json: @message.errors
        end
    end

    def update
        @message = Message.find(params[:id])
        @message.update(message_params)
        render json: @message
    end

    def destroy
        @message = Message.find(params[:id])
        @message.destroy
        render json: { message: 'success'}
    end

    private

    def message_params
        params.require(:message).permit(:content, :sender_id, :recipient_id, :created_at, :updated_at, :replied)
    end

end
