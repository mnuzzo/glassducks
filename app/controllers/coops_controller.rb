class CoopsController < ApplicationController
  def index
	@coops = Coop.page(params[:page]).per(25)
  end

  def new
	@coop = Coop.new
   
  end

  def create
    @coop = Coop.new(params.require(:coop).permit(:title, :company, :location, :url))
    if @coop.save
      redirect_to root_path
    else
      render "new"
    end
  end

end
