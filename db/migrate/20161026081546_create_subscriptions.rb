class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :folower
      t.integer :blogger

      t.timestamps null: false
    end
  end
end
