class AddUserIdToBlogPosts < ActiveRecord::Migration
  def change
    add_column :blog_posts, :user, :belongs_to
  end
end
