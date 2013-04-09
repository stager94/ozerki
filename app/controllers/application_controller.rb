class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  	@news = New.root
  end
end
