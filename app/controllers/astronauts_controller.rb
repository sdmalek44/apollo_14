class AstronautsController < ApplicationController
  def index
    @astronauts = Astronaut.all.includes(:missions)
    @average_age = Astronaut.average_age
  end
end
