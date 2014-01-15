class CreateStaffAccounts < ActiveRecord::Migration
  def change
    create_table :staff_accounts do |t|
      t.integer :staffid
      t.integer :trainer_id
      t.string :location
      t.integer :hours
      t.decimal :salary,precision:5, scale:2
      t.decimal :production, precision:5, scale:2
      t.decimal :weekly,precision:5, scale:2
      t.decimal :monthly,precision:5, scale:2
      t.decimal :yearly,precision:5, scale:2
      t.integer :clients
      t.integer :classes_total
      t.integer :classes_day
      t.integer :classes_month
      t.integer :classes_weekly
      t.integer :classes_yearly
      t.integer :travel_miles
      t.string  :gyms
      t.string  :active, boolean: :true

      t.timestamps
    end

    add_index(:staff_accounts,:trainer_id)
  end
end
