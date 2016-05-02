require 'json'
require './Movie' # if we run 'spec test/movie_test.rb
require 'rspec'
require 'rainbow'
require 'httparty'

describe Movie do
  it "should return a hash" do
    Movie.new.to_hash.class.should == Hash
  end

  it "should be Solarbabies" do
    @sb = Movie.new.to_hash
    @sb['Title'].should == 'Solarbabies'
  end

  it "should be Solarbabies" do
    @sb = Movie.new.to_hash
    @sb['Year'].should == '1986'
  end
end
