Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/youngest", { :controller => "directors", :action => "youthful" })
  
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/movies", { :controller => "movies", :action => "film_index" })
  
  get("/actors", { :controller => "actors", :action => "actor_index" })

  get("/movies/:movie_id", { :controller => "movies", :action => "film_id" })
  
  get("/actors/:actor_id", { :controller => "actors", :action => "actor_details" })

  get("/directors/:director_id", { :controller => "directors", :action => "director_details" })

end
