require 'tvdude/ircbot'
require 'tvdude/myepisodes'

module Tvdude
  VERSION = '0.0.1'

  class Tvdude
    def initialize(uid, pwdmd5, irc_server, irc_channel, irc_nick)
      # plugin = MyEpisodesHandler
      # plugin.set(uid, pwdmd5)
      bot = IrcBot.new(irc_server, irc_channel, irc_nick, [MyEpisodesHandler])
      bot.connect
    end
  end
end
