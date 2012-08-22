class CreateCalendarsCalendars < ActiveRecord::Migration

  def up
    create_table :refinery_calendars do |t|
      t.string :name
      t.string :room
      t.datetime :date
      t.string :host_name
      t.string :host_name
      t.string :host_email
      t.string :contact_email
      t.text :comment
      t.decimal :admission
      t.string :link
      t.boolean :published
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-calendars"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/calendars/calendars"})
    end

    drop_table :refinery_calendars

  end

end
