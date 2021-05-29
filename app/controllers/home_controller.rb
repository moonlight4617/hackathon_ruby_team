class HomeController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = Post.all
    @graph = Post.group(:time).average(:congestion_level)
  end

  def about
    @posts = Post.limit(4)
    @graph = Post.group(:time).average(:congestion_level)
  end
end
