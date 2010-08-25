# Tweeplists

Get Twitter users from [Listorious](http://listorious.com) and [WeFollow](http://wefollow.com) lists.

## Dependencies

    sudo gem install nokogiri

## Installation

As a plugin (in your Rails directory):

    script/plugin install git://github.com/phuphighter/tweeplists.git
    
I will convert this to a gem soon.
    
## Usage

### Instantiate a client

    >> tweeplists = Tweeplists::Client.new
    
#### Examples

    >> listorious_list = tweeplists.listorious(http://listorious.com/tags/technology)
    >> listorious_list.users.first.username
    => "bing"
    
    >> wefollow_list = tweeplists.wefollow('http://wefollow.com/twitter/entrepreneur')
    >> wefollow_list.users[1].username
    => "TechCrunch"
    
## Copyright

Contact me if you have any suggestions and feel free to fork it!

Copyright (c) 2009 Johnny Khai Nguyen, released under the MIT license
