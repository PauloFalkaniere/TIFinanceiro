class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.float :value, default: 0
      t.string :description
      t.date :date
      t.references :accounts
      t.timestamps
    end
  end
end
