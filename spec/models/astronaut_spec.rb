require 'rails_helper'

describe Astronaut, type: :model do
  describe 'validations' do
    it {should validate_presence_of :name}
    it {should validate_presence_of :age}
    it {should validate_presence_of :job}
  end
  describe 'relationships' do
    it {should have_many :astronaut_missions}
    it {should have_many :missions}
  end
  describe 'class methods' do
    it 'calculates average age of astronauts' do
      Astronaut.create!(name: 'bob', job: 'thing', age: 30)
      Astronaut.create!(name: 'bob', job: 'thing', age: 40)

      expect(Astronaut.average_age).to eq(35.0)
    end

  end
  describe 'instance methods' do
    it 'we can get all missions in alphabetical order' do
      astronaut = Astronaut.create!(name: 'bob', job: 'thing', age: 30)
      mission1 = astronaut.missions.create!(title: 'aaa', trip_length: 45 )
      mission2 = astronaut.missions.create!(title: 'ddd', trip_length: 40 )

      expect(astronaut.get_missions).to eq("#{mission1.title}, #{mission2.title}")
    end
    it 'caclulates total time in space ' do
      astronaut = Astronaut.create!(name: 'bob', job: 'thing', age: 30)
      astronaut.missions.create!(title: 'aaa', trip_length: 40 )
      astronaut.missions.create!(title: 'ddd', trip_length: 40 )

      expect(astronaut.space_time).to eq(80)
    end
  end
end
