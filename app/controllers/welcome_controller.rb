class WelcomeController < ApplicationController
  def index
  	ids = Article.pluck(:id)
  	@recent_articles = Article.find(ids.sample(5))
  end
end
