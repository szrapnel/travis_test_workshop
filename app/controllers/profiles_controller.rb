class ProfilesController < ApplicationController

  expose(:user)

  def show
    @last_reviews = user.reviews.all.order("created_at desc").limit(5);
  end

end
