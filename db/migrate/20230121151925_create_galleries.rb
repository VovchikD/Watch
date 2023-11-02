class CreateGalleries < ActiveRecord::Migration[7.0]
  def change
    create_table :galleries do |t|
      t.integer :product_id
      t.string :img

    
    end

    
    
  end
end
