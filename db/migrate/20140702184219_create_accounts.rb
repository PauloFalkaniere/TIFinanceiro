class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.float :value, default: 0
   	  t.float :total, default: 0
      t.string :description
      t.references :budget
      t.timestamps
    end
  end
end