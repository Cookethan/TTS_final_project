class FeedController < ApplicationController
  def recently_viewed
    @posts = Post.all
  end

  def liked
    @posts = Post.all
  end

  def feed
    @posts = Post.all
  end
end
