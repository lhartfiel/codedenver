class ChangeTagsInPosts < ActiveRecord::Migration
  def up
  	change_column :posts, :tags, :string
  end

  def down
  	change_column :posts, :tags, :string
  end
end
