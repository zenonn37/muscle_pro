class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.integer :acct_num
      t.string :avatar
      t.integer :h_phone
      t.integer :c_phone
      t.string  :street_address
       t.string  :city
        t.string  :state
         t.integer  :zip
    


      t.timestamps
    end
  end
end
