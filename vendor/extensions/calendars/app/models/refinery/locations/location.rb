module Refinery
  module Locations
    class Location < Refinery::Core::BaseModel
      self.table_name = 'refinery_locations'

      attr_accessible :name, :position

      acts_as_indexed :fields => [:name]

      validates :name, :presence => true, uniqueness: {case_sensitive: false}

      has_many :calendars, dependent: :restrict
    end
  end
end
