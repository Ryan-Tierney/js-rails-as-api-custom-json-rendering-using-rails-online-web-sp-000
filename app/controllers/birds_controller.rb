class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: {id: birds.id, name: birds.name, species: birds.species}
  end
  
  def show 
    bird = Bird.find_by(id: params[:id])
    render json: {id: bird.id, name: bird.name, species: bird.species}
  end 
end