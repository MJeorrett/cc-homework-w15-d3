class Show < ActiveRecord::Base
  has_many :favourites
  has_many :favourited_by_users, through: :favourites, source: :user
end
