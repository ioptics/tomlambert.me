class SiteController < ApplicationController
  def index
    @recent_work = Image.recent
  end
end
