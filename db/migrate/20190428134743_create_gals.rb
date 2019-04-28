class CreateGals < ActiveRecord::Migration[5.2]
  def change
    create_table :gals do |t|
      t.string :image
      t.string :impression
      t.string :type

      t.timestamps
    end
  end
end
