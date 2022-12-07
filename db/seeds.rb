puts "Deleting old data..."

Critic.destroy_all
Restaurant.destroy_all
Review.destroy_all

# Seed your database here
non_celebrities = []
puts "Creating critic data..."
5.times do
  non_celebrities << Critic.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        age: rand(18..70),
        gender: Faker::Gender.binary_type,
        celebrity: false
)
end

adam_la_rosa = Critic.create(
  first_name:"Adam",  
  last_name: "La Rosa", 
  age: 20,
  celebrity: true, 
  gender: "male" )

oprah_winfrey = Critic.create(
first_name:"Oprah", 
last_name: "Winfrey", 
age: 68,
celebrity: true, 
gender: "female")

phil_rosenthal = Critic.create(
first_name:"Phil",  
last_name: "Rosenthal",
age: 62,
celebrity: true, 
gender: "male" )

guy_fieri = Critic.create(
first_name:"Guy",  
last_name: "Fieri",
age: 54,
celebrity: true, 
gender: "male" )

steve_buscami = Critic.create(
first_name:"Steve", 
last_name: "Buscemi", 
age: 64,
celebrity: true, 
gender: "male" )

ada_lovelace = Critic.create(
first_name: "Ada", 
last_name: "Lovelace",
age: "Deceased🦴",
celebrity: true, 
gender: "male" )

lady_gaga = Critic.create(
first_name:"Lady",  
last_name: "Gaga", 
age: 36,
celebrity: true, 
gender: "female" )

gordon_ramsey = Critic.create(
first_name:"Gordan",  
last_name: "Ramsey", 
age: 56,
celebrity: true, 
gender: "male" )

puts "Creating restaurant data..."
10.times do
  Restaurant.create(
        name: Faker::Restaurant.name,
        michelin_stars: rand(1..3),
        location: ["Chicago", "New York", "Las Vegas", "Orlando", "San Francisco"].sample,
        cuisine: Faker::Restaurant.type,
        health_hazards: [true, false].sample
  ) 
end

gordon_ramsey_restaurant = Restaurant.create(
  name: "Gordon Ramsay au Trianon",
  michelin_stars: (1),
  location: "Versailles",
  cuisine: "French",
  health_hazards: false
  
)
all_restaurants = Restaurant.all

puts "Creating review data..."
20.times do 
  Review.create(
    description: Faker::Restaurant.review,
    date_published: Faker::Date.between(from: '2017-1-01', to: '2022-12-09').to_formatted_s(:long),
    restaurant_id: all_restaurants.sample.id,
    critic_id: non_celebrities.sample.id 
  )
end

Review.create(
  description: Faker::Restaurant.review,
  date_published: Faker::Date.between(from: '2017-1-01', to: '2022-12-09').to_formatted_s(:long),
  restaurant_id: all_restaurants.sample.id,
  critic_id: non_celebrities.sample.id
  
)
Review.create(
  description: Faker::Restaurant.review,
  date_published: Faker::Date.between(from: '2017-1-01', to: '2022-12-09').to_formatted_s(:long),
  restaurant_id: all_restaurants.sample.id,
  critic_id: oprah_winfrey.id
  
)
Review.create(
  description: Faker::Restaurant.review,
  date_published: Faker::Date.between(from: '2017-1-01', to: '2022-12-09').to_formatted_s(:long),
  restaurant_id: all_restaurants.sample.id,
  critic_id: phil_rosenthal.id
  
)
Review.create(
  description: Faker::Restaurant.review,
  date_published: Faker::Date.between(from: '2017-1-01', to: '2022-12-09').to_formatted_s(:long),
  restaurant_id: all_restaurants.sample.id,
  critic_id: guy_fieri.id
  
)
Review.create(
  description: Faker::Restaurant.review,
  date_published: Faker::Date.between(from: '2017-1-01', to: '2022-12-09').to_formatted_s(:long),
  restaurant_id: all_restaurants.sample.id,
  critic_id: steve_buscami.id
  
)
Review.create(
  description: Faker::Restaurant.review,
  date_published: Faker::Date.between(from: '2017-1-01', to: '2022-12-09').to_formatted_s(:long),
  restaurant_id: all_restaurants.sample.id,
  critic_id: ada_lovelace.id
  
) 
Review.create(
  description: Faker::Restaurant.review,
  date_published: Faker::Date.between(from: '2017-1-01', to: '2022-12-09').to_formatted_s(:long),
  restaurant_id: all_restaurants.sample.id,
  critic_id: lady_gaga.id
  
)
Review.create(
  description: Faker::Restaurant.review,
  date_published: Faker::Date.between(from: '2017-1-01', to: '2022-12-09').to_formatted_s(:long),
  restaurant_id: gordon_ramsey_restaurant.id,
  critic_id: gordon_ramsey.id
  
)

puts "✅ Finish lol"
