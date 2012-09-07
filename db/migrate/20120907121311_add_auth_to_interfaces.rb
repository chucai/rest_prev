class AddAuthToInterfaces < ActiveRecord::Migration
  def change
    add_column :interfaces, :auth, :boolean, :default => false
  end
end
