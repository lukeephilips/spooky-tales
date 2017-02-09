class TalesController < ApplicationController

  def up_vote
    @tale = Tale.find(params[:tale_id])
    new_score = @tale.score + 1
    @tale.update({:score => new_score})
    redirect_to tale_path(@tale)
  end
  def down_vote
    @tale = Tale.find(params[:tale_id])
    new_score = @tale.score - 1
    @tale.update({:score => new_score})
    redirect_to tale_path(@tale)
  end


  def index
    @tales = Tale.all
  end

  def show
    @tale = Tale.find(params[:id])
  end
  def new
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
    binding.pry
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
    redirect_to account_path(current_account)
  end

  private
  def tale_params
    params.require(:tale).permit(:title, :picture)
  end

end
