require 'faker'
Faker::Config.locale = 'fr'
City.delete_all
User.delete_all
Gossip.delete_all

10.times do 
  city = City.create(name: Faker::Address.city)
  u = User.new(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph, email: Faker::Internet.email, age: Faker::Number.between(from: 18, to: 78), city: City.find(rand(1..10)))

  u.city = city
  u.save
  2.times do
    u.gossips << Gossip.create(title: Faker::Quote.singular_siegler, content: Faker::Quote.famous_last_words)
  end



end