class RemoveColumnLike < ActiveRecord::Migration[5.0]
  def change
    remove_column :likes, :like, :boolean
  end
end
