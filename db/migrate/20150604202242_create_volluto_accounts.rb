class CreateVollutoAccounts < ActiveRecord::Migration
  def change
    create_table :volluto_accounts do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
