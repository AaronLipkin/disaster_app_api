class CreateCities < ActiveRecord::Migration[5.1]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :emergency_number
      t.string :extra_info

      t.timestamps
    end
  end
end
