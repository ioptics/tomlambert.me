class SiteController < ApplicationController
  def index
    @recent_work = Image.recent
    @recent_posts = Post.recent
  end
end
