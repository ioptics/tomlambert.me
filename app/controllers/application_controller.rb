require 'twitter'

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  filter_parameter_logging :password

  before_filter :find_lastest_tweets
  
  private
  
  def find_lastest_tweets
    @latest_tweets = Twitter::Search.new.from('PICTOM').per_page(1)
  end
  
  helper_method :authorised?
  
  def authorised?
    authenticate_or_request_with_http_basic("Private Area") do |username, password|
      true if username == 'admin' and password == 'password'
    end
  end
end
