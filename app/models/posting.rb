class Posting < ActiveRecord::Base
  belongs_to :subcategory
  # belongs_to :category, through: :subcategories
  # belongs_to :location, through: :categories
end
