class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds
  end
  
  def show 
    bird = Bird.findy_by_(id: params[:id])
    render json: bird 
  end 
end