class TargetsController < ApplicationController
  def index
    @targets = Target.all
  end

  def new
    @target = Target.new
  end

  def create
    @target = Target.new(target_params)
    if @target.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def target_params
    params.require(:target).permit(:title, :description, :completed, :due_date)
  end
end
