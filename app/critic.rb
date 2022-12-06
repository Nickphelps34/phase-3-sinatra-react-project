class Critic < ActiveRecord::Base
  has_many :reviews
  has_many :reviews, through: :restaurants
end