class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
get "/" do
    { message: "Good luck with your project!" }.to_json
end

 get "/restaurants" do
  restaurants = Restaurant.all
  restaurants.to_json(include: :critics)  
 end 

 get "/critics" do 
  critics = Critic.all
  critics.to_json(include: :reviews)  
 end



end
