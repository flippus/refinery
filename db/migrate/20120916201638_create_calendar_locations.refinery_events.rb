# This migration comes from refinery_events (originally 2)
class CreateCalendarLocations < ActiveRecord::Migration

  def up
    create_table :refinery_calendar_locations do |t|

      t.string :name

      t.integer :position

      t.timestamps
    end

    add_column :refinery_calendar_events, :location_id, :integer
    add_index :refinery_calendar_events, :location_id
  end

end

def down
  if defined?(::Refinery::UserPlugin)
    ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-calendar"})
  end

  drop_table :refinery_calendar_locations

  remove_column :refinery_calendar_events, :location_id
  remove_index :refinery_calendar_events, :category_id

end
