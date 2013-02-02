require 'cinch'

module Tvdude
  class IrcBot
    attr_accessor :server, :channel, :nick

    def initialize(server, channel, nick, plugins)
      @server = server
      @channel = channel
      @nick = nick

      @bot = Cinch::Bot.new do
        configure do |c|
          c.server = server
          c.channels = [channel]
          c.nick = nick
          c.plugins.plugins = plugins
        end

        # on :message, "!tvdude" do |m|
        #   m.reply "hello, #{m.user.nick}"
        # end
      end
    end

    def connect
      @bot.start
    end

  end
end
