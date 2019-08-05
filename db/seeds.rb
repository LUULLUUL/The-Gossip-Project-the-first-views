require 'faker'
Faker::Config.locale = 'fr'
City.delete_all
User.delete_all
Gossip.delete_all

10.times do 
  city = City.create(name: Faker::Address.city)
  u = User.new(first_name: Faker::Name.first_name)
  u.city = city
  u.save
  2.times do
    u.gossips << Gossip.create(title: Faker::Quote.singular_siegler, content: Faker::Quote.famous_last_words)
  end
end