class CreateCarts < ActiveRecord::Migration[7.0]
  def change
    create_table :carts do |t|
      #add_reference table_name :carts, ref_name :user, index: true

      t.timestamps
    end
  end
end
