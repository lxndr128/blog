class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.integer :subscriber_id
      t.integer :publisher_id

      t.timestamps
    end
  end
end
