module Refinery
  module Calendar
    module Admin
      class EventsController < ::Refinery::AdminController

        crudify :'refinery/calendar/event',
                :title_attribute => 'name',
                :xhr_paging => true,
                :order => "date DESC",
                :sortable => false

      end
    end
  end
end
