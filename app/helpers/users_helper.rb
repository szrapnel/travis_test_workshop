module UsersHelper
  def show_last_reviews
  	if @last_reviews.empty?
  		return "This user has no reviews yet."
  	else
  		render :partial=>'reviews/review_in_profile', :collection=> @last_reviews
  	end
  end
end
