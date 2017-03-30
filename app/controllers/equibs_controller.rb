class EquibsController < ApplicationController

  def show
    @equib = Equib.find(params[:id])
    @repairs = @equib.repairs
  end

  def index
    @equibs = Equib.order("id DESC")

  end


end
