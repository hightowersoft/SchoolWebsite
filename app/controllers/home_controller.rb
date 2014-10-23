class HomeController < ApplicationController
  def index
  	@news_items = NewsItem.get_featured_items
  	render layout: 'home'
  end
end
