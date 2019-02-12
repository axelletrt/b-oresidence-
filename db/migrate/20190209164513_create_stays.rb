class CreateStays < ActiveRecord::Migration[5.2]
  def change
    create_table :stays do |t|
      t.belongs_to :tenant, index: true 
      t.belongs_to :studio, index: true 
      t.datetime :checkin_date
      t.datetime :checkout_date
      t.timestamps
    end
  end
end
