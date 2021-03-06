class Article < ActiveRecord::Base
	belongs_to :user
	has_many :article_categories
	has_many :categories, through: :article_categories
	validates :title, presence: true
	validates :content, presence: true
	validates :categories, presence: true

	def self.search(query)
	# where(:title, query) -> This would return an exact match of the query
	where("title like ?", "%#{query}%")
	end
end
