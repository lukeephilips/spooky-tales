class AddColumnDropUsers < ActiveRecord::Migration[5.0]
  def change
    add_column(:tales, :score, :integer)
    drop_table(:users)
  end
end
