require 'rails_helper'

describe 'when user visits /astronauts' do
  it 'can see a list of all astronauts' do
    astronaut1 = Astronaut.create!(name: 'bob', job: 'astro', age: 34)
    astronaut2 = Astronaut.create!(name: 'tim', job: 'thing', age: 30)

    visit astronauts_path

    expect(page).to have_content(astronaut1.name)
    expect(page).to have_content(astronaut1.age)
    expect(page).to have_content(astronaut1.job)
    expect(page).to have_content(astronaut2.name)
    expect(page).to have_content(astronaut2.age)
    expect(page).to have_content(astronaut2.job)
  end
end
