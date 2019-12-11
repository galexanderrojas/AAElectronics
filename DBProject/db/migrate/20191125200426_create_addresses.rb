class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :state
      t.string :city
      t.string :zip

      t.timestamps
    end
  end
end
