class Category < ActiveRecord::Base
  belongs_to :location
  has_many :subcategories
  has_many :postings, :through => :subcategories
end
