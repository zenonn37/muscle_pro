class AddTrainingIdToBios < ActiveRecord::Migration
  def change

  	add_column :bios, :trainer_id, :integer
  end
end
