class AddAccountId < ActiveRecord::Migration[5.0]
  def change
    add_column(:contributions, :account_id, :integer)
  end
end
