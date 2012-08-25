module Refinery
  module Calendars
    class Calendar < Refinery::Core::BaseModel
      self.table_name = 'refinery_calendars'

      attr_accessible :name, :room, :date, :location,  :category, :host_name, :host_email, :contact_email, :comment, :admission, :link, :published, :position

      acts_as_indexed :fields => [:name, :room, :host_name, :host_email, :contact_email, :comment, :link]

      validates :name, :date, :location, :category, :host_name, :host_email, :contact_email, :presence => true
      validates_numericality_of :admission, greater_than_or_equal_to:  0, allow_nil: true

      belongs_to :location
      belongs_to :category

    end
  end
end
