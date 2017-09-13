class CreateSurvivors < ActiveRecord::Migration[5.1]
  def change
    create_table :survivors do |t|
      t.decimal :lat
      t.decimal :lng
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
