Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/youngest", { :controller => "directors", :action => "youthful" })
  
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  # get("/directors/movies", { :controller => "directors", :action => "film_list" })
  
  # get("/directors/actors", { :controller => "directors", :action => "actor_list" })

  # get("/directors/:movie_id", { :controller => "directors", :action => "film" })

  # get("/directors/:actor_id", { :controller => "directors", :action => "actor" })

  get("/directors/:director_id", { :controller => "directors", :action => "director_details" })

end
