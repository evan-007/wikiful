class WelcomeController < ApplicationController
  def index
  	@recent_articles = Article.all(:limit => 5, :order => 'created_at DESC')
  end
end
