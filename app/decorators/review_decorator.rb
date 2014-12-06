class ReviewDecorator < Draper::Decorator
  delegate_all

  def author  
    user = review.user.decorate
    user.fullname
  end

  def created_at
    review.created_at.strftime(DATE_FORMAT)
  end

end
