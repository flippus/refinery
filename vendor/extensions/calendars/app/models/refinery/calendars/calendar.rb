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

      accepts_nested_attributes_for :location, :reject_if => lambda { |a| a[:new_location].blank? }, allow_destroy: true
      accepts_nested_attributes_for :category, :reject_if => lambda { |a| a[:new_category].blank? }, allow_destroy: true

      before_validation :new_location_and_category

      def new_location_and_category
        self.location_id = new_location_id if new_location_id && location.blank?
        self.category_id = new_category_id if new_category_id && category.blank?
      end
    end
  end
end
