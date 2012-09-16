module Refinery
  module Calendar
    class Event < Refinery::Core::BaseModel

      attr_accessible :name, :room, :date, :location, :category, :host_name, :host_email, :contact_email, :comment, :admission, :link, :published, :position, :new_location, :location_selection
      attr_accessor :new_location, :location_selection

      acts_as_indexed :fields => [:name, :room, :host_name, :host_email, :contact_email, :comment, :link]

      validates :name, :date, :location, :category, :host_name, :host_email, :contact_email, :presence => true
      validates_numericality_of :admission, greater_than_or_equal_to:  0, allow_nil: true

      belongs_to :location
      belongs_to :category

      before_validation :check_location_selection

      private

      def check_location_selection
        MyLog.debug "location_selection #{location_selection}, #{location_selection.to_i}"
        return if location_selection == 0

        if !new_location.blank?
          created_location = Refinery::Locations::Location.create!(name: new_location)
          self.location = created_location.id
        else
          errors.add(:new_location, "cant be blank")
        end
      end

    end
  end
end
