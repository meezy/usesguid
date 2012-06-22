$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
  
require 'usesguid/active_record_extensions'
require 'usesguid/uuid22'
require 'usesguid/uuid_mysql'
require 'usesguid/uuidtools'

module Usesguid
  VERSION = '1.0.0'
end

ActiveRecord::Base.class_eval do
  include Usesguid::ActiveRecordExtensions
  def self.inherited(descendant)
    ret = super(descendant)
    descendant.send :include, Usesguid::ActiveRecordExtensions
    ret
  end
end
