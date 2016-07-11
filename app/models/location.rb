class Location < ActiveRecord::Base
  has_many :categories
  has_many :subcategories, through: :categories
  has_many :postings, through: :subcategories
end
