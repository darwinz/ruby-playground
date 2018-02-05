require 'tweetstream'
require 'json'

TweetStream.configure do |config|
  config.consumer_key       = ENV["TS_CONSUMER_KEY"]
  config.consumer_secret    = ENV["TS_CONSUMER_SECRET"]
  config.oauth_token        = ENV["TS_OAUTH_TOKEN"]
  config.oauth_token_secret = ENV["TS_OAUTH_TOKEN_SECRET"]
  config.auth_method        = :oauth
end

# This will pull a sample of all tweets based on
# your Twitter account's Streaming API role.
TweetStream::Client.new.track('ruby', 'rails') do |status|
  # The status object is a special Hash with
  # method access to its keys.
  puts "#{status.to_h.to_json}"
  f = File.open('tweetmap.json', 'w')
  f.write(status.to_h.to_json)
  break
end
