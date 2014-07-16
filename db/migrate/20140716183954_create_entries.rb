class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.float :value
      t.date :date
      t.string :description
      t.references :subaccount, index: true

      t.timestamps
    end
  end
end
