class CreateInterfaces < ActiveRecord::Migration
  def change
    create_table :interfaces do |t|
      t.string :url
      t.string :method
      t.string :params
      t.string :returns

      t.timestamps
    end
  end
end
