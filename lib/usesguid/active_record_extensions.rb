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
        self[self.class.primary_key] = case ActiveRecord::Base.guid_generator
          when :mysql then UUID.mysql_create(self.connection)
          when :timestamp then UUID.timestamp_create()
          else raise "Unrecognized guid generator '#{ActiveRecord::Base.guid_generator.to_s}'"
        end.to_s
      end
    end

    
    module ClassMethods
      
      # guid_generator can be :timestamp or :mysql
      def guid_generator=(generator); class_eval { @guid_generator = generator } end
      def guid_generator; class_eval { @guid_generator || :timestamp } end

    end #ClassMethods
    
  end #ActiveRecordExtensions
end #Usesguid