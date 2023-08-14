class AddIndexToSubscriptions < ActiveRecord::Migration[7.0]
  def change
    add_index "subscriptions", ["subscriber_id", "publisher_id"], :unique => true
  end
end
