class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.integer :subscriber_id, null: false
      t.integer :publisher_id, null: false

      t.timestamps
    end
  end
end
