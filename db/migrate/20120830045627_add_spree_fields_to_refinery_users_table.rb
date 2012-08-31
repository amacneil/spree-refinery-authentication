class AddSpreeFieldsToRefineryUsersTable < ActiveRecord::Migration
  def up
    add_column(:refinery_users, :spree_api_key, :string, :limit => 48) unless column_exists?(:refinery_users, :spree_api_key)
    add_column(:refinery_users, :ship_address_id, :integer) unless column_exists?(:refinery_users, :ship_address_id)
    add_column(:refinery_users, :bill_address_id, :integer) unless column_exists?(:refinery_users, :bill_address_id)
  end

  def down
    remove_column(:refinery_users, :spree_api_key)
    remove_column(:refinery_users, :ship_address_id)
    remove_column(:refinery_users, :bill_address_id)
  end
end
