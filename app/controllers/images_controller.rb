require 'rest-client'

class ImagesController < ApplicationController
    def index
        @images = Image.all
        render json: @images
    end

    def create
        # puts(getPermanentURL(params['file'].tempfile)['url'])
        @images = Image.all
        render json: @images
    end

    def test
        puts params['files'].map{|file| file.tempfile}
        puts params['filenames']
        @images = Image.all
        render json: @images
    end

    private

    def getPermanentURL(file)
        auth = Rails.application.credentials.cloudinary
        return Cloudinary::Uploader.upload(file, auth)
    end
end
