class UserDecorator < Draper::Decorator
  delegate_all

  def fullname  
    user.firstname+' '+user.lastname
  end

  def created_at
    user.created_at.strftime(DATE_FORMAT)
  end

  def last_sign_in_at
    user.last_sign_in_at.strftime(DATE_FORMAT)
  end

end
