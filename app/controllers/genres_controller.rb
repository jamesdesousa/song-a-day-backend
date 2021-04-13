class GenresController < ApplicationController
    def index
        @genres = Genre.order(:id)
        render json: @genres
    end

    def show
        @genre = Genre.find(params[:id])
        render json: @genre
    end

end
