class CreateSubAccounts < ActiveRecord::Migration
  def change
    create_table :sub_accounts do |t|
      t.string :name
      t.float :total
      t.string :description
      t.references :accounts, index: true

      t.timestamps
    end
  end
end
