# from Demetrio Nunes
# Modified by Andy Singleton to use different GUID generator
# Further modified by Brian Morearty to:
# 1. optionally use the MySQL GUID generator
# 2. respect the "column" option
# 3. set the id before create instead of after initialize
#
# MIT License



module Usesguid
  module ActiveRecordExtensions
    
    #def self.append_features( base )
    def self.included( base )
      super
      base.extend( ClassMethods )

      base.class_eval do
        before_create :assign_guid
      end
      
      base.primary_key = 'id'
    end

    def assign_guid
      if self[self.class.primary_key].blank? 
        self[self.class.primary_key] = UUID.mysql_create(self.connection).to_s
      end
    end    
    
  end #ActiveRecordExtensions
end #Usesguid