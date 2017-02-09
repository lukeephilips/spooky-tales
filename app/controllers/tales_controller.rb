class TalesController < ApplicationController

  def index
    @tales = Tale.all
    @active_user = current_account
    @user = current_account

  end

  def show
    @tale = Tale.find(params[:id])
    @active_user = @@active_user
  end
  def new
    # @picture = random_pic
    @active_user = @@active_user
    @tale = Tale.new
  end
  def create
    @tale =Tale.new(tale_params)
    if @tale.save
      redirect_to tale_path(@tale)
    else
      render :new
    end
  end

  def edit
    @tale = Tale.find(params[:id])
  end

  def update
    @tale = Tale.find(params[:id])
    if @tale.update(tale_params)
      redirect_to tale_path(@tale)
    else
      render :edit
    end
  end

  def destroy
    @tale = Tale.find(params[:id])
    @tale.destroy
    @active_user = @@active_user
    redirect_to user_path(@active_user)
  end

  private
  def tale_params
    params.require(:tale).permit(:title, :picture)
  end
end
