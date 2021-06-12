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

    def update
        @meme = Meme.find(params[:id])
        @meme.update(title: params['meme']['title'], image: params['meme']['image'], description: params['meme']['description'])
        @meme.save
        render json: @meme
    end

    private 

    def meme_params
        params.require(:meme).permit(:title, :image, :description)
    end

end
