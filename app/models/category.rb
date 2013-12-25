class Category < ActiveRecord::Base
	has_many :articles, through: :article_categories
	validates_uniqueness_of :name
	validates :name, presence: true
end
