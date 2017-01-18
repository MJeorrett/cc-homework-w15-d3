class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.text :description
      t.integer :series
      t.string :image_url
      t.string :programme_id

      t.timestamps null: false
    end
  end
end
