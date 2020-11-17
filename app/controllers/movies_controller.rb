class MoviesController < ApplicationController

    def index
        # debugger
        movies = Movie.all
        render json: {
            movies: movies
        }
    end
    
    def show
        movie = Movie.find_by(id: params[:id])
        render json: {
            movie: movie
        }
    end

    def new
    end

    def create
        # byebug
    #     movie = Movie.create(movie_params)
    #     if movie.valid?
    #         render json: movie
    #     else
    #         render json: "Unable to commit changes"
    #     end
    end

    def create_or_return_movie
        # byebug
        movie = Movie.find_or_create_by(movie_api_id: params["id"])
        movie.movie_title = params["title"]
        # byebug
        movie.save #???????
        render json: {
            movie: movie
        }
    end


    def edit
        movie = Movie.find_by(id: params[:id])
    end

    def update
        # byebug
        movie = Movie.find_by(movie_api_id: params["id"])
        if params["_json"] == "upvote"
            movie.up_votes + 1
            render json: {
                movie: movie
            }
        elsif params["_json"] == "downvote"
            movie.up_votes - 1
            render json: {
                movie: movie
            }
        else
            render json: {
                status: "error", 
                code: 4000, 
                message: "Unable to Vote At This Time"
            }
        end
        movie.save
    end

    private

    def movie_params
        params.require(:movie).permit(:movie_api_id, :movie_title, :up_votes, :down_votes)
    end

end
