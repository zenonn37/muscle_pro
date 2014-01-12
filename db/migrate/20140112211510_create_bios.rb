class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :certs
      t.integer :exp
      t.string :history
      t.string :about
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
