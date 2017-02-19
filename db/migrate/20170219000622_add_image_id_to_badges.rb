class AddImageIdToBadges < ActiveRecord::Migration[5.0]
  def change
    remove_column :badges, :image, :string, null: false
    add_column :badges, :image_id, :integer, null: false
  end
end
