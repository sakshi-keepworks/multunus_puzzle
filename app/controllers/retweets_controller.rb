class RetweetsController < ApplicationController
  def new
  end

  def create
    require "rubygems"
    require "twitter"
  
    # Certain methods require authentication. To get your Twitter OAuth credentials,
    # register an app at http://dev.twitter.com/apps
    Twitter.configure do |config|
      config.consumer_key = ''
      config.consumer_secret =  ''
      config.oauth_token = ''
      config.oauth_token_secret = ''
    end
  
    # Initialize your Twitter client
    client = Twitter::Client.new
  
    # Post a status update
    client.update("I just posted a status update via the Twitter Ruby Gem !")
    redirect_to request.referer, :notice => 'Tweet successfully posted'
  end
end
