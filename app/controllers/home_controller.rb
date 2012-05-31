class HomeController < ApplicationController
  def index
		@products = Product.order('created_at').page(params[:page]).per(1)
  end
end
