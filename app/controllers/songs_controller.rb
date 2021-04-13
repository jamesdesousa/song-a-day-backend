class SongsController < ApplicationController
    def index
        @songs = Song.order(:id)
        render json: @songs
    end

    def show
        @song = Song.find(params[:id])
        render json: @song
    end

    def new
        @song = Song.new
        render json: @song
    end

    def create 
        @song = Song.create(song_params)
        render json: @song
    end

    def edit
        @song = Song.find(params[:id])
        render json: @song
    end

    def update 
        @song = Song.find(params[:id])
        @song.update(song_params)
        render json: @song
    end

    def destroy 
        @song = Song.find(params[:id])
        @song.destroy
        render json: @song
    end

    private
    def song_params
        params.permit(:name, :artist, :track_id, :genre_id)
    end
end
