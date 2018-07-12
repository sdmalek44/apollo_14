class CreateMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :missions do |t|
      t.string :title
      t.integer :trip_length

      t.timestamps
    end
  end
end
