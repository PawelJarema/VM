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

  def create
    @movie = Movie.create!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully created."
    redirect_to movies_path
  end

  def show
    id = params[:id]         # retrieve movie ID from URI route
    @movie = Movie.find(id)  # lookup movie by ID
    # the command above will render /app/views/movies/show.html.haml by default
  end

  def edit
    @movie = Movie.find params[:id]
  end

  def update
    @movie = Movie.find params[:id]
    @movie.update_attributes!(params[:movie])
    flash[:notice] = "#{@movie.title} was successfully updated."
    redirect_to movie_path(@movie)
  end

  def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:notice] = "Movie '#{@movie.title}' deleted."
    redirect_to movies_path
  end
end
