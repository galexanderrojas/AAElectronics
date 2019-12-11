class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :customeremail
      t.string :phonenumber
      t.integer :addressid

      t.timestamps
    end
  end
end
