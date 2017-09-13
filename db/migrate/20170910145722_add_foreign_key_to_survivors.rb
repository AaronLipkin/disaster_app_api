class AddForeignKeyToSurvivors < ActiveRecord::Migration[5.1]
  def change
  	add_column :survivors, :city_id, :integer
  end
end
