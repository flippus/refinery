# This migration comes from refinery_events (originally 3)
class CreateCalendarCategories < ActiveRecord::Migration

  def up
    create_table :refinery_calendar_categories do |t|

      t.string :name

      t.integer :position

      t.timestamps
    end

    add_column :refinery_calendar_events, :category_id, :integer
    add_index :refinery_calendar_events, :category_id

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-calendar"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/calendar/categories"})
    end

    drop_table :refinery_calendar_categories

    remove_column :refinery_calendar_events, :category_id
    remove_index :refinery_calendar_events, :category_id

  end

end
