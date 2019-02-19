class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = Micropost.paginate(page: params[:page])
    end
  end

  def about
  end
  
  def retrieval
    @feed_items = Micropost.tagged_with(params[:word]).paginate(page: params[:page])
    render 'home'
  end
  
  def beginner
    @feed_items = Micropost.where(beginner: "初心者にもおすすめ" ).paginate(page: params[:page])
    render 'home'
  end
end
