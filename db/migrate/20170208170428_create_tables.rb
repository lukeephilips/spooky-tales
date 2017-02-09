class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.column :name, :string
      t.column :headshot, :string
      t.timestamps
    end
    create_table :tales do |t|
      t.column :title, :string
      t.column :picture, :string
      t.timestamps
    end
    create_table :contributions do |t|
      t.belongs_to :user, index: true
      t.belongs_to :tale, index: true
      t.column :text, :string
      t.column :image, :string
      t.timestamps
    end
  end
end
