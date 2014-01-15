class CreateTclasses < ActiveRecord::Migration
  def change
    create_table :tclasses do |t|
      t.integer :teacher_id
      t.string :name
      t.string :level
      t.integer :duration
      t.integer :mclass
      t.date :dclass
      t.time :timeclass

      t.timestamps
    end

    add_index(:tclasses,:teacher_id)
  end
end
