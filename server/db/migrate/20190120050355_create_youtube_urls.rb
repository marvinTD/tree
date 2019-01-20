class CreateYoutubeUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :youtube_urls, id: :uuid do |t|
      t.string :name
      t.text :url
      t.string :branch
      t.timestamps
    end
  end
end
