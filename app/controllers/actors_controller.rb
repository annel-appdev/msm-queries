class ActorsController < ApplicationController

  def actor_index
    @list_of_actors = Actor.all
    render ({ :template => "actor_templates/actor_index.html.erb" })
  end

  def actor_details
    @actor_id = params.fetch("actor_id")
    @an_actor = Actor.where({ :id => @actor_id }).at(0)
    @characters = Character.where({ :actor_id => @an_actor })
  
    render ({ :template => "actor_templates/actor_details.html.erb" })
  end

end

