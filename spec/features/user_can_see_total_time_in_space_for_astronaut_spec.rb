require 'rails_helper'

describe 'when user visits /astronauts' do
  it 'can see total time in space for each astronaut' do
    astronaut = Astronaut.create!(name: 'bob', job: 'thing', age: 30)
    mission1 = astronaut.missions.create!(title: 'aaa', trip_length: 40 )
    mission2 = astronaut.missions.create!(title: 'ddd', trip_length: 40 )

    visit astronauts_path

    expect(page).to have_content("Total Time in Space: #{80} days")
  end
end
