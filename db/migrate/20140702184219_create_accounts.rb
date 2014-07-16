class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
   	  t.float :total, default: 0
      t.string :description
      t.references :budget, index: true
      t.timestamps
    end
  end
end