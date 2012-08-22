module Refinery
  module Calendars
    module Admin
      class CalendarsController < ::Refinery::AdminController

        crudify :'refinery/calendars/calendar',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
