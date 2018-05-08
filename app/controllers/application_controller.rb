class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected
  def fetch_home_date
    @categories = Category.grouped_data
  end
end
