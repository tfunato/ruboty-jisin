require 'twitter'

module Ruboty
  module Handlers
    class Jisin < Base
      on /jisin/, name: "show", description: "Show earthquake infomation from Twitter"

      env :TWITTER_CONSUMER_KEY, "Twitter consumer key (a.k.a. API key)"
      env :TWITTER_CONSUMER_SECRET, "Twitter consumer secret (a.k.a. API secret)"
      env :TWITTER_ACCESS_TOKEN, "Twitter access token"
      env :TWITTER_ACCESS_TOKEN_SECRET, "Twitter access token secret"

      def show(message)
        get.each do |tweet|
          case tweet
          when ::Twitter::Tweet
              message.reply(tweet.text)
            )
          end
       end
      end

      def get
        Ruboty::Jisin::Client.new(param).get
      end

      private
      def param
        {
          customer_key: ENV["TWITTER_CONSUMER_KEY"],
          customer_secret: ENV["TWITTER_CONSUMER_SECRET"],
          access_token: ENV["TWITTER_ACCESS_TOKEN"],
          access_token_secret: ENV["TWITTER_ACCESS_TOKEN_SECRET"],
        }.reject {|key, value| value.nil?}
      end
    end
  end
end
