# Tweeplists
require 'rubygems'
require 'hashie'
require 'nokogiri'
require 'open-uri'

directory = File.expand_path(File.dirname(__FILE__))

Hash.send :include, Hashie::HashExtensions

module Tweeplists
  
  def self.configure
    yield self
    true
  end
  
end

require File.join(directory, 'tweeplists', 'client')
