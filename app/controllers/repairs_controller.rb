class RepairsController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def new
    @equib = Equib.find(params[:equib_id])
    @repair = Repair.new
  end

  def create
    @equib = Equib.find(params[:equib_id])
    @repair = Repair.new(repair_params)
    @repair.equib = @equib
    if @repair.save
      redirect_to equib_path(@equib), notice: "已添加！"
    else
      render :new,notice: "失败！"
    end
  end

  private
  def repair_params
    params.require(:repair).permit(:cause, :fees, :is_wireman)
  end
end
