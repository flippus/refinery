module Refinery
  module Calendar
    module Admin
      class CategoriesController < ::Refinery::AdminController

        crudify :'refinery/calendar/category',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
