class AddColumnsToBadges < ActiveRecord::Migration[5.0]
  def change
    add_column :badges, :category, :string
    add_column :badges, :medal, :string
  end
end
