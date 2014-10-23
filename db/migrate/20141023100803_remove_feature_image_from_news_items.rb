class RemoveFeatureImageFromNewsItems < ActiveRecord::Migration
  def change
    remove_column :news_items, :feature_image, :string
  end
end
