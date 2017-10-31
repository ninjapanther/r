class CreateServerdetails < ActiveRecord::Migration[5.1]
  def change
    create_table :serverdetails do |t|
      t.string :servername
      t.integer :cpu
      t.integer :disk
      t.integer :process

      t.timestamps
    end
  end
end
