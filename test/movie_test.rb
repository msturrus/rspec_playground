require 'json'
require './Movie' # if we run 'spec test/movie_test.rb
require 'rspec'
require 'rainbow'
require 'httparty'

describe Movie do
  it "should return a hash" do
    Movie.new.to_hash.class.should == Hash
  end
end
