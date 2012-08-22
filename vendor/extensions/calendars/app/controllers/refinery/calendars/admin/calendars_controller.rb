module Refinery
  module Calendars
    module Admin
      class CalendarsController < ::Refinery::AdminController

        crudify :'refinery/calendars/calendar',
                :title_attribute => 'name',
                :xhr_paging => true,
                :order => "date ASC",
                :sortable => false

      end
    end
  end
end
