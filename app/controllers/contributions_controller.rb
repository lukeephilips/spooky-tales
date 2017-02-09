class ContributionsController < ApplicationController
  def new
    @tale = Tale.find(params[:tale_id])
    @contribution = @tale.contributions.new
  end
  def create
    @tale = Tale.find(params[:tale_id])
    @contribution = @tale.contributions.new(contribution_params)
    if @contribution.save
      redirect_to tale_path(@tale)
    else
      render :new
    end
  end

  def edit
    @tale = Tale.find(params[:tale_id])
    @contribution = Contribution.find(params[:id])
  end

  def update
    @tale = Tale.find(params[:tale_id])
    @contribution = Contribution.find(params[:id])
    if @contribution.update(contribution_params)
      redirect_to tale_path(@tale)
    else
      render :edit
    end
  end

  def destroy
    @tale = Tale.find(params[:tale_id])
    @contribution = Contribution.find(params[:id])
    @contribution.destroy
    redirect_to tale_path(@tale)
  end


  private
  def contribution_params
    params.require(:contribution).permit(:text, :image, :account_id)
  end
end
