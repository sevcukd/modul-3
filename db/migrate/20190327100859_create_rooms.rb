class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.string :title
      t.string :description
      t.string :photos
      t.integer :hotel_id

      t.timestamps
    end
  end
end
