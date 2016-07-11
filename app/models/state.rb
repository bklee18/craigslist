class State < ActiveRecord::Base
  has_many :cities
  has_many :categories, through: :cities
  has_many :subcategories, through: :categories
  has_many :postings, through: :subcategories
end
