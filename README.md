# tvdude

http://github.com/davorb/tvdude

# DESCRIPTION:

tvdude is an irc-bot that allows you to check your watchlist
on myepisodes.com from irc.

# SYNOPSIS:

  FIX (code sample of usage)

# REQUIREMENTS:

* [cinch](https://github.com/cinchrb/cinch)
* feedzirra

# INSTALL:

* `gem install bundler`
* `bundle install`
* Run a file similar to this:

```ruby
require 'tvdude'

uid = "davorb"
pwdmd5 = "adfasdfasdfasdasdfasdfasd"

server = "dk.quakenet.org"
channel = "#tvdude"
nick = "tvdude"

Tvdude::Tvdude.new(uid, pwdmd5, server, channel, nick)
```

# DEVELOPERS:

After checking out the source, run:
```
  $ rake newb
```
This task will install any missing dependencies, run the tests/specs,
and generate the RDoc.

# LICENSE:

(The MIT License)

Copyright (c) 2013 Davor Babic

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
