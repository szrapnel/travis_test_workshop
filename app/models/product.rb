class Product < ActiveRecord::Base
  validates_presence_of :title, :description, :price
  validates_numericality_of :price
  validates_format_of :price, :with => /\A\d+\.*\d{0,2}\Z/

  belongs_to :category
  belongs_to :user
  has_many :reviews

  def average_rating 
    if reviews.empty?
      return 0
    else
      sum=0
      reviews.each do |r|
        sum+=r.rating
      end
      return sum.to_f/reviews.count
    end
  end

  def is_owned_by?(user)
    if user!=nil
      return user_id!=nil && user.id!=nil && user_id==user.id
    end
    return false
  end
end
