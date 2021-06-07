class Api::V1::MemesController < ApplicationController

    def index 
        @memes = Meme.all
        render json: @memes
    end

    def create 
        @meme = Meme.new(meme_params)
        if @meme.save
            render json: @meme
        else
            render json: { error: "Incorrect meme try again"}
        end
    end

    def show
        @meme = Meme.find(params[:id])
        render json: @meme
    end

    def destroy
        @meme = Meme.find(params[:id])
        @meme.destroy
    end

    private 

    def meme_params
        params.require(:meme).permit(:title, :image, :description)
    end

end
