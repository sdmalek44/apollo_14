class AstronautSpaceMissions < ActiveRecord::Migration[5.1]
  def change
    create_table :astronaut_space_missions do |t|
      t.references :astronaut, foreign_key: true
      t.references :space_mission, foreign_key: true
  end
end
