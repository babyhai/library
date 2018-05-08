class ProductsController < ApplicationController
  def show
    fetch_home_date
    @product = Product.find(params[:id])
  end

end