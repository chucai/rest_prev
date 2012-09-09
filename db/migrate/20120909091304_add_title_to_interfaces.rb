class AddTitleToInterfaces < ActiveRecord::Migration
  def change
    add_column :interfaces, :title, :string
  end
end
