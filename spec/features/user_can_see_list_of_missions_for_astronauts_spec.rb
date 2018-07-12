require 'rails_helper'


describe 'user visits /students' do
  it 'can see a list of missions for astronaut' do
    astronaut = Astronaut.create!(name: 'bob', job: 'thing', age: 30)
    mission1 = astronaut.missions.create!(title: 'aaa', trip_length: 45 )
    mission2 = astronaut.missions.create!(title: 'ddd', trip_length: 40 )

    visit astronauts_path

    expect(page).to have_content("#{mission1.title}, #{mission2.title}")
  end
end
