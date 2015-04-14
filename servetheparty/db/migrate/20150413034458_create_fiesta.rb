class CreateFiesta < ActiveRecord::Migration
  def change
    create_table :fiesta do |t|

      t.timestamps null: false
    end
  end
end
