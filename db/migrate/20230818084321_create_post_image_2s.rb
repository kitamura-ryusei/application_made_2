class CreatePostImage2s < ActiveRecord::Migration[6.1]
  def change
    create_table :post_image_2s do |t|
      t.integer :image_id
      t.string :shop_name
      t.text :caption
      t.integer :user_id
      t.timestamps
    end
  end
end
