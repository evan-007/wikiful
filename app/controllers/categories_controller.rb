class CategoriesController < ApplicationController
  def index
  	@categories = Category.order(name: :asc)
  end

  def show
  	@category = Category.find(params[:id])
  	@category_articles = Category.find(params[:id]).articles
  end
end
