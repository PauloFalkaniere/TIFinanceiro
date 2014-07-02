class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :name
      t.float :value, default: 0
      t.float :total, default: 0
      t.string :description
      t.timestamps
    end
  end
end
