class NewsItem < ActiveRecord::Base

	def self.get_featured_items number = 3
		NewsItem.where(featured: true).order(updated_at: :desc).take(number)
	end
end
