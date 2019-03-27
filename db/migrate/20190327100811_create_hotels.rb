class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.string :title
      t.string :description
      t.string :photos

      t.timestamps
    end
  end
end
