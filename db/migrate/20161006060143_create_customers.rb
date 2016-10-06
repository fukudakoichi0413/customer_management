class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.date :birthday
      t.string :postcode
      t.string :address_pref
      t.string :address_others
      t.string :phone_1
      t.string :phone_2
      t.string :mail_1
      t.string :mail_2

      t.timestamps
    end
  end
end
