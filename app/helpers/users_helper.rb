module UsersHelper
  def show_last_reviews
    show_items_on_panel('Last reviews', @last_reviews, 'This user has no reviews yet.', 'reviews/review_in_profile')
  end

  def link_to_profile user
    link_to user.firstname+' '+user.lastname, profile_path(user)
  end
end
