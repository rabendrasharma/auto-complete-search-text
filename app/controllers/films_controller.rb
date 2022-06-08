class FilmsController < ApplicationController

  def index 
  end

  def auto_complete
    @films = Film.search(params[:search])
    render json: @films.map(&:title).uniq
  end
end
