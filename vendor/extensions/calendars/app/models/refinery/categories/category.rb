module Refinery
  module Categories
    class Category < Refinery::Core::BaseModel
      self.table_name = 'refinery_categories'

      attr_accessible :name, :position

      acts_as_indexed :fields => [:name]

      validates :name, :presence => true, uniqueness: {case_sensitive: false}

      has_many :calendars, dependent: :restrict
    end
  end
end
