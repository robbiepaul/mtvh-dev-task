class CreateProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.string :property_ref
      t.string :address
      t.timestamps
    end
  end
end
