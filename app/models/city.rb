class City < ActiveRecord::Base
  has_many :categories
  belongs_to :state
  has_many :subcategories, through: :categories
  has_many :postings, through: :subcategories
end
