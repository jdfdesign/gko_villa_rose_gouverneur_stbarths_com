# This migration comes from gko_core (originally 20121031100200)
class AddRestrictedToPages < ActiveRecord::Migration
  class Section < ActiveRecord::Base
  
  end
  
  def up
    Section.reset_column_information 
    add_column :sections, :restricted, :boolean, :default => false
  end

  def down
    remove_column :sections, :restricted
  end
end