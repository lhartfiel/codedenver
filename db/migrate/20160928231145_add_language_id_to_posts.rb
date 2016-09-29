class AddLanguageIdToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :language_id, :integer
  end
end
