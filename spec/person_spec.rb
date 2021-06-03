require './lib/spacecraft'
require './lib/person'

RSpec.describe Person do
  it "exists and has attributes" do
    kathy = Person.new('Kathy Chan', 10)
    polly = Person.new('Polly Parker', 8)
    rover = Person.new('Rover Henriette', 1)
    sampson = Person.new('Sampson Edwards', 7)

    expect(kathy).to be_an_instance_of(Person)
    expect(kathy.name).to eq("Kathy Chan")
    expect(kathy.experience).to eq(10)
    expect(kathy.specialties).to eq([])
  end

  it "starts without specialties and adds them" do
      kathy = Person.new('Kathy Chan', 10)
      polly = Person.new('Polly Parker', 8)
      rover = Person.new('Rover Henriette', 1)
      sampson = Person.new('Sampson Edwards', 7)

      kathy.add_specialty(:astrophysics)
      kathy.add_specialty(:quantum_mechanics)
      polly.add_specialty(:operations)
      polly.add_specialty(:maintenance)
      rover.add_specialty(:operations)
      rover.add_specialty(:maintenance)
      sampson.add_specialty(:astrophysics)
      sampson.add_specialty(:quantum_mechanics)

      expect(kathy.specialties).to eq([:astrophysics, :quantum_mechanics])

  end
end
