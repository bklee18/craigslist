class Posting < ActiveRecord::Base
  belongs_to :subcategory
  # belongs_to :category, through: :subcategories
  # belongs_to :location, through: :categories
  before_save :generate_key

  def generate_key
    self.edit_key = SecureRandom.hex
  end
end
