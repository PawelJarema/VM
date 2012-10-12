# This file is app/controllers/movie_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    # this method only renders the form using haml template
    # it's default behav of any controller, so we can leave it
    # like this
  end

  def show
    id = params[:id]         # retrieve movie ID from URI route
    @movie = Movie.find(id)  # lookup movie by ID
    # the command above will render /app/views/movies/show.html.haml by default
  end

end
