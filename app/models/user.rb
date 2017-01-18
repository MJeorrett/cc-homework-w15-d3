class User < ActiveRecord::Base
  has_many :favourites
  has_many :favourite_shows, through: :favourites, source: :show
end
