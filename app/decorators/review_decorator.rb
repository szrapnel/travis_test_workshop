class ReviewDecorator < Draper::Decorator
  delegate_all

  def author  
    review.user.fullname
  end

end
