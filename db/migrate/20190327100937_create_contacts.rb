class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :address
      t.string :phone
      t.string :email
      t.integer :hotel_id

      t.timestamps
    end
  end
end
