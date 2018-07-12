class Mission < ApplicationRecord
  validates_presence_of :title, :trip_length
  has_many :astronaut_missions
  has_many :astronauts, through: :astronaut_missions
end
