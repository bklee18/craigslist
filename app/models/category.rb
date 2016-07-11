class Category < ActiveRecord::Base
  belongs_to :city
  belongs_to :state, foreign_key: :state_id
  has_many :subcategories
  has_many :postings, through: :subcategories
end
