class EquibsController < ApplicationController

  def show
    @equib = Equib.find(params[:id])
  end

  
end
