class SetDefaultScore < ActiveRecord::Migration[5.0]
  def change
    change_column :tales, :score, :integer, :default => 0
  end
end
