class CreateZutaten < ActiveRecord::Migration[5.1]
    def change 
        create_table :zutaten do |t|
            t.string :name
            t.decimal :price, precision: 5, scale:2, default: 0
            
            t.timestamps
        end 
    end 
end