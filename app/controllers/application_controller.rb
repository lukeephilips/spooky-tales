class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_account!, :only => [:new, :create, :edit, :update, :delete]

end
