class AddUserColumnsToAccount < ActiveRecord::Migration[5.0]
  def change
    add_column(:accounts, :name, :string)
    add_column(:accounts, :headshot, :string)

  end
end
