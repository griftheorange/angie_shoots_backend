class ImagesController < ApplicationController
    def index
        @images = Image.all
        render json: @images
    end

    def create
        puts request.body
        @images = Image.all
        render json: @images
    end
end
