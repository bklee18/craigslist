class Subcategory < ActiveRecord::Base
  has_many :postings
  belongs_to :category
  # belongs_to :location, through: :categories
end
