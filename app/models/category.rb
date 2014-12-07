class Category < ActiveRecord::Base
  validates :name, uniqueness: { case_sensitive: true }

  has_many :products

  before_destroy :destroy_products

  private

    def destroy_products
      self.products.destroy_all
    end
end
