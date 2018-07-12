class Astronaut < ApplicationRecord
  validates_presence_of :name, :job, :age
  has_many :astronaut_missions
  has_many :missions, through: :astronaut_missions

  def self.average_age
    average(:age)
  end

  def get_missions
    missions.order(:title).pluck(:title).join(", ")
  end

  def space_time
    missions.sum(:trip_length)
  end
end
