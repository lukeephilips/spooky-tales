class AccountsController < ApplicationController
  def show
    sign_out :account
    redirect_to new_account_session_path
  end

  def update
    if (current_account.update({:name => params[:name]}) and current_account.update({:headshot => params[:headshot]}))
      redirect_to tales_path
    else
      render :edit
    end
  end
end
