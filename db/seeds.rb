require 'faker'



10.times do
  Email.create(object: Faker::GameOfThrones.character, body: Faker::GameOfThrones.quote , read: false)
end
