class CreateReviewPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :review_posts do |t|
      t.string :title
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
