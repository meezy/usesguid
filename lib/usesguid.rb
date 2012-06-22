$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
  
require 'usesguid/active_record_extensions'
require 'usesguid/uuid_mysql'
require 'usesguid/uuidtools'

module Usesguid
  VERSION = '1.1.0'
end

#to add to a class, include Usesguid::ActiveRecordExtensions
