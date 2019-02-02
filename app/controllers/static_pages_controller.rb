class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = Micropost.paginate(page: params[:page])
    end
  end

  def about
  end
end
