module Refinery
  module Calendar
    module Admin
      class LocationsController < ::Refinery::AdminController

        crudify :'refinery/calendar/location',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
