require 'spec_helper'
require 'tvdude/ircbot'

describe Tvdude::IrcBot do
  let(:server)  { "se.quakenet.org" }
  let(:channel) { "#tvdude" }
  let(:nick)    { "tvdude_tester" }
  let(:plugins) { Array.new }

  subject { Tvdude::IrcBot.new(server, channel, nick, plugins) }

  it { should respond_to :server, :channel, :nick, :connect }
end
