class Admin::EquibsController < ApplicationController
  before_action :authenticate_user!, only:[:new,:create]

  def new
    @equib = Equib.new
  end

  def create
    @equib = Equib.new(equib_params)
    if @equib.save
      redirect_to admin_equibs_path,notice: "已新增！"
    else
      render :back
    end
  end

  def index
    @equibs = Equib.all
  end

  def edit
    @equib = Equib.find(params[:id])
  end

  def update
    @equib = Equib.find(params[:id])
    if @equib.update(equib_params)
      redirect_to admin_equibs_path, notice: "更新成功！"
    else
      render :edit
    end
  end

  def show
    @equib = Equib.find(params[:id])
  end

  def destroy
    @equib = Equib.find(params[:id])
    @equib.destroy
    redirect_to admin_equibs_path, alert: "已删除！"
  end

  def meter
    @equibs = Equib.all
    flash[:notice] = "hahahahab"
  end

  private

  def equib_params
    params.require(:equib).permit(:title, :department, :position, :principal, :purchase_date, :is_for_production, :use_state, :origin, :model, :supplier, :warranty, :description, :price, :age_limit)
  end
end
