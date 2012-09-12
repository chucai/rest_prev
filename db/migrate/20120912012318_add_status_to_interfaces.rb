class AddStatusToInterfaces < ActiveRecord::Migration
  def change
    add_column :interfaces, :status, :integer, :default => 200
  end
end
