

require 'bundler'
Bundler.require


$:.unshift File.expand_path("./../lib", __FILE__)

require 'gossip'
require 'router'
require 'controller'

Router.new.perform

#my_gossip = Gossip.new
#my_gossip.save
