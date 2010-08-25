require 'test_helper'

class TweeplistsTest < Test::Unit::TestCase

  context "when using tweeplists" do
    setup do
      @client = Tweeplists::Client.new
    end
    
    context "and fetching lists" do
      should "retrieve list from listorious" do
        stub_get("http://listorious.com/tags/technology", "listorious.html")
        list = @client.listorious("http://listorious.com/tags/technology")
        list.users.first.username.should == "bing"
        list.users.first.twitter_url == "http://twitter.com/bing"
        list.url.should == "http://listorious.com/tags/technology"
      end
    end
    
    context "and fetching lists" do
      should "retrieve list from wefollow" do
        stub_get("http://wefollow.com/twitter/entrepreneur", "wefollow.html")
        list = @client.wefollow("http://wefollow.com/twitter/entrepreneur")
        list.users[1].username.should == "TechCrunch"
        list.users[1].twitter_url == "http://twitter.com/TechCrunch"
        list.url.should == "http://wefollow.com/twitter/entrepreneur"
      end
    end
    
  end

end