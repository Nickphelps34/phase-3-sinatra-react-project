class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here CRUD methods
get "/" do
    { message: "Good luck with your project!" }.to_json
end

 get "/restaurants" do
  restaurants = Restaurant.all
  restaurants.to_json  
 end 

 post "/restaurants" do 
  Restaurant.create(name: params[:name], michelin_stars: params[:price], location: params[:location], cuisine: params[:cuisine], health_hazards: params[:health_hazards]).to_json
 end

 get "/restaurants/:id" do 
  Restaurant.find(params[:id]).to_json(include: :reviews)
 end

 delete "/restaurants/:id" do 
  Restaurant.find(params[:id]).destroy
 end

 get "/critics" do 
  critics = Critic.all
  critics.to_json(include: :reviews)  
 end

 get "/reviews" do
  reviews = Review.all
  reviews.to_json
 end

 post "/reviews" do 
  # binding.pry
  Review.create(name: params[:name], restaurant_id: params[:restaurant_id], critic_id: params[:critic_id], date_published: params[:date_published]).to_json
 end

 patch "/reviews/:id" do 
  review = Review.find(params[:id])
  review.update(likes: params[:likes])
  review.to_json
 end

 delete "/critics/:id" do 
  Critic.find(params[:id]).destroy
 end

#  post "/critics" do
  
#  end
end

# post "/inventories" do
#   #binding.pry
# inventory = Inventory.create(hat_name: params[:hat_name], price: params[:price], quantity: params[:quantity], image_url: params[:image_url], description: params[:description], store_id: params[:store_id]).to_json
# end

# delete "/inventories/:id" do 
# inventory = Inventory.find(params[:id]).destroy
# end

