class CreateNewsItems < ActiveRecord::Migration
  def change
    create_table :news_items do |t|
      t.string :title
      t.text :body
      t.boolean :featured
      t.boolean :enabled
      t.string :feature_image

      t.timestamps
    end
  end
end
