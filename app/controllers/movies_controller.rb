class MoviesController < ApplicationController
    before_action :set_movie, only: [:show, :edit, :update]

    def index
        @movies = Movie.all
    end
    
    def show
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    private

    def set_movie
        @movie = Movie.find_by(id: params[:id])
    end


end
