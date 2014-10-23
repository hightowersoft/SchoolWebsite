class NewsItem < ActiveRecord::Base
	has_attached_file :image, styles: {thumb: "300x200#"}
	validates_attachment_content_type :image, :content_type => ["image/png", "image/gif", "image/jpeg", "image/jpg"]

	validates :title, :body, presence: true

	def self.get_featured_items number = 3
		NewsItem.where(featured: true).order(updated_at: :desc).take(number)
	end
end
