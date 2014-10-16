require 'twitter'

module Ruboty
  module Jisin
    JISIN_TWITTER_ACCOUNT = "zishin3255_2"
    class Client

      def initialize(param)
        @param = param
      end

      def get
        client.user_timeline(account, :count => 3)
      end

      private

      def account
        JISIN_TWITTER_ACCOUNT
      end

      def client
        client = Twitter::REST::Client.new do |config|
          config.consumer_key        = @param[:customer_key]
          config.consumer_secret     = @param[:customer_secret]
          config.access_token        = @param[:access_token]
          config.access_token_secret = @param[:access_token_secret]
        end
      end
    end
  end
end
