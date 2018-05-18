class LarpsController < ApplicationController

  def index
    @larps = Larp.all
  end

  def show
    @larp = Larp.find(param[:id])
  end

  def new
    @larp = Larp.new
  end

  def create
    @larp = Larp.new(larp_params)
    if @larp.save
      redirect_to larps_path, notice: "Larp was created successfully"
    else
      render :new
    end
  end

  def edit
    @larp = Larp.find(params[:id])
  end

  def update
    if @larp.update(larp_params)
      redirect_to larps_path. notice "Larp was updated successfully"
    else
      render :edit
    end
  end

  def larp_params
    params.require(:larp).permit(:name)
  end
end
