module Tweeplists
  
  class Client
    
    def wefollow(url)
      doc = Nokogiri::HTML(open(url))
      wefollow = Hashie::Mash.new
      wefollow.url = url
      wefollow.users = []
      
      doc.css('p.result_header').each do |user|
        wefollow.users << Hashie::Mash.new(:username => user.content, 
                                           :twitter_url => "http://twitter.com/#{user.content}")
      end
      
      wefollow
  	end

    def listorious(url)
      doc = Nokogiri::HTML(open(url))
      listorious = Hashie::Mash.new
      listorious.url = url
      listorious.users = []
      
      doc.css('h4 > a.hovercard').each do |user|
        listorious.users << Hashie::Mash.new(:username => user.attributes["username"].value, 
                                             :twitter_url => "http://twitter.com/#{user.attributes["username"].value}")
      end
      
      listorious
  	end

  end
end