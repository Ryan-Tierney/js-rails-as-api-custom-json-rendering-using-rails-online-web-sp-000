class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: {id: bird.id, name: bird.name, species: bird.species
  end
  
  def show 
    bird = Bird.find_by(id: params[:id])
    render json: bird 
  end 
end