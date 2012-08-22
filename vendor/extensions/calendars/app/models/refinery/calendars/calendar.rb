module Refinery
  module Calendars
    class Calendar < Refinery::Core::BaseModel
      self.table_name = 'refinery_calendars'

      attr_accessible :name, :room, :date, :host_name, :host_name, :host_email, :contact_email, :comment, :admission, :link, :published, :position

      acts_as_indexed :fields => [:name, :room, :host_name, :host_name, :host_email, :contact_email, :comment, :link]

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
