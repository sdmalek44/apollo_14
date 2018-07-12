require 'rails_helper'

describe Mission, type: :model do
  describe 'validations' do
    it {should validate_presence_of :trip_length}
    it {should validate_presence_of :title}
  end
  describe 'relationships' do
    it {should have_many :astronaut_missions}
    it {should have_many :astronauts}
  end
end
