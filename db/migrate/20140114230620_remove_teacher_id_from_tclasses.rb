class RemoveTeacherIdFromTclasses < ActiveRecord::Migration
  def change
  	remove_column :tclasses, :teacher_id
  	add_column :tclasses, :trainer_id, :integer
  
  	add_index :tclasses,:trainer_id
  end
end
