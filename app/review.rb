class Review < ActiveRecord::Base
    belongs_to :restaurant
    belongs_to :critic
end