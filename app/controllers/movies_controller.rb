class MoviesController < ApplicationController

  def film_index
      @list_of_movies = Movie.all
      render({ :template => "movie_templates/movies_index.html.erb"})
  end

  def director_name
    @list_of_directors = Director.all
    render({ :template => "movie_templates/movies_index.html.erb"})
  end

  def film_id
    @movie_id = params.fetch("movie_id")
    @the_movie = Movie.where({ :id => @movie_id }).at(0)
    render({ :template => "movie_templates/movie_details.html.erb"})
  end

  # def film_details
  #   @list_of_movies = Movie.all
  #   render({ :template => "movie_templates/movie_details.html.erb"})
  # end

end
