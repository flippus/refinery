module Refinery
  module Calendar
    class EventsController < ::ApplicationController

      before_filter :find_all_upcoming_events
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @event in the line below:
        present(@page)
      end

      def show
        @event = Event.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @event in the line below:
        present(@page)
      end

    protected

      def find_all_upcoming_events
        @events = Event.published.where("date >= ?", Time.now).order("date ASC")
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/events").first
      end

    end
  end
end
