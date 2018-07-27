class RemoveLikesToPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :likes, :integer
  end
end
