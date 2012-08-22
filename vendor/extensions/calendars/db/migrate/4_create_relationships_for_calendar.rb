class CreateCategoriesCategories < ActiveRecord::Migration

  def up
    add_column :refinery_calendars, :location_id, :integer
    add_column :refinery_calendars, :category_id, :integer

    add_index :refinery_calendars, :location_id
    add_index :refinery_calendars, :category_id
  end

  def down
    remove_column :refinery_calendars, :location_id
    remove_column :refinery_calendars, :category_id

    remove_index :refinery_calendars, :location_id
    remove_index :refinery_calendars, :category_id
  end

end