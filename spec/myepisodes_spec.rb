require 'spec_helper'
require 'tvdude/myepisodes'

describe Tvdude::MyEpisodesHandler do
  subject { Tvdude::MyEpisodesHandler.new }

  it { should respond_to :execute }
end
