class ProfilesController < ApplicationController

  expose_decorated(:user)
  expose_decorated(:reviews, ancestor: :user)

  def show
    last_reviews = user.reviews.all.order("created_at desc").limit(5);
    @last_reviews = last_reviews.decorate;
  end

end
