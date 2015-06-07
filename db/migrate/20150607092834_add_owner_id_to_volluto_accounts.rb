class AddOwnerIdToVollutoAccounts < ActiveRecord::Migration
  def change
    add_column :volluto_accounts, :owner_id, :integer
  end
end
