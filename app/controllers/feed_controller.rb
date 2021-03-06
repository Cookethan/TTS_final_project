class FeedController < ApplicationController
  def recently_viewed
    @posts = Post.all
  end

  def liked
    @posts = Post.all
  end

  def feed
    @posts = Post.all.page(params[:page])
    # @saved_posts = SavedPost.where(user_id: current_user.id )
    @saved = (Post.includes(:saved_posts).where(saved_posts:{user_id: current_user.id}))
  end

  def search
    if params[:search].blank?  
    redirect_to(root_path, alert: "Empty field!") and return  
    else 
      @parameter = params[:search].downcase  
      @results = Post.all.where("lower(title) LIKE :search", search: @parameter).or(Post.all.where("lower(artist) LIKE :search", search: @parameter)).or(Post.all.where("lower(genre) LIKE :search", search: @parameter)).or(Post.all.where("lower(date) LIKE :search", search: @parameter)).or(Post.all.where("lower(medium) LIKE :search", search: @parameter))
    end
  end

end
