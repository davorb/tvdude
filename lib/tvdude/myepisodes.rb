require 'cinch'
require 'feedzirra'

module Tvdude
  class MyEpisodesHandler
    include Cinch::Plugin
    match "test"

    def set#(uid, pwdmd5)

          uid = "davorb"
          pwdmd5 = "e10ac88193ea67bfee3bf39b65d6e41d"

      @feed_url =
        "http://myepisodes.com/rss.php?feed=today&showignored=1"+
        "&onlyunacquired=1&uid=#{uid}&pwdmd5=#{pwdmd5}"
        # "http://myepisodes.com/rss.php?feed=mylist&uid=davorb&pwdmd5=e10ac88193ea67bfee3bf39b65d6e41d"
    end

    def execute(m)
      puts "received!"
      m.reply "Ok!"
      m.reply get_episodes
    end

    def get_episodes
      set
      feed = Feedzirra::Feed.fetch_and_parse @feed_url
      result = feed.title
      feed.entries.take(10).each {|e| result << "\n#{e.title}" }
      result
    end
  end
end
