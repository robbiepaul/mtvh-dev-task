class CreateApplicants < ActiveRecord::Migration[7.1]
  def change
    create_table :applicants do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :status, default: 'pending'
      t.integer :dependants, default: 0
      t.references :property, null: false, foreign_key: true
      t.timestamps
    end
  end
end
