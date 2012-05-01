class DropLocatorTable < ActiveRecord::Migration

  def up
    drop_table :locators
  end

  def down
  end
end
