require 'rails_helper'

describe 'user visits /astronauts ' do
  it 'can see a average age of all astronauts' do
    Astronaut.create!(name: 'bob', job: 'thing', age: 30)
    Astronaut.create!(name: 'bob', job: 'thing', age: 40)

    visit astronauts_path

    expect(page).to have_content("Average Age: 35.0")
  end
end
