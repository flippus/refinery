module Refinery
  module Locations
    class Location < Refinery::Core::BaseModel
      self.table_name = 'refinery_locations'

      attr_accessible :name, :position

      acts_as_indexed :fields => [:name]

      #TODO: case_sensitive true
      validates :name, :presence => true, :uniqueness => true
    end
  end
end
