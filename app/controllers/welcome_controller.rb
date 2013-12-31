class WelcomeController < ApplicationController
  def index
  	ids = Article.pluck(:id)
  	@recent_articles = Article.find(ids.sample(5))
  end
end


##id = Article.first.order(id: :desc).id
##rand(0..id)
##rand(1..id)
#then call this 5 times 
# or:
# Article.find_by_sql "SELECT * ...."

#or Article.all.limit(5).where("id IN (SELECT trunc(random() * 50 + 1) FROM generate_series(1,5))")