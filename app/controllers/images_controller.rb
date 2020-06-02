require 'rest-client'
require 'fastimage'

class ImagesController < ApplicationController
    def index
        @images = Image.all
        render json: @images
    end

    def create
        @images = []
        params['files'].each_with_index { |file, index| 
            route = getPermanentURL(file)
            if route
                image = Image.create({
                    :title => params['filenames'][index],
                    :route => route
                })
                @images.append(image)
            end
        }
        
        render json: @images
    end

    private

    def getPermanentURL(file)
        auth = Rails.application.credentials.cloudinary
        maxCloudinarySize = 10485760
        return Cloudinary::Uploader.upload(file, auth)['url']
    end
end
