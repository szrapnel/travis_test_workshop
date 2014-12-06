class Category < ActiveRecord::Base
  validates :name, uniqueness: { case_sensitive: true }

  has_many :products
end
