module Refinery
  module Calendar
    module Admin
      class EventsController < ::Refinery::AdminController

        crudify :'refinery/calendar/event',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
