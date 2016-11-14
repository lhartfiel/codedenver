class AddPostTypeIdToLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :post_type_id, :integer
  end
end
