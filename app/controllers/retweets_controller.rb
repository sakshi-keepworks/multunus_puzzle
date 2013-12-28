class RetweetsController < ApplicationController
  def new
  end

  def create
    require "rubygems"
    require "twitter"
  
    # Certain methods require authentication. To get your Twitter OAuth credentials,
    # register an app at http://dev.twitter.com/apps
    Twitter.configure do |config|
      config.consumer_key = 'KaChM1SkMvnZF7hcGMA'
      config.consumer_secret =  '29AY0j8IR9xy14NbpEIY0Pgqf7utpGPO3s1PcxYrys'
      config.oauth_token = '1500225216-7SxZm2NWHNjxSDNhDTTg11cIk0RiOTXhSsd4HWo'
      config.oauth_token_secret = 'Yr5cJHIrhiFZzE8PX13hQ7TXcCbCX4hl8Gm1pkoYVhNj5'
    end
  
    # Initialize your Twitter client
    client = Twitter::Client.new
  
    # Post a status update
    client.update("I just posted a status update via the Twitter Ruby Gem !")
    redirect_to request.referer, :notice => 'Tweet successfully posted'
  end
end
