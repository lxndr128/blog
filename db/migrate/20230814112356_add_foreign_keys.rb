class AddForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :posts, :users, column: :user_id
    add_foreign_key :comments, :users, column: :user_id
    add_foreign_key :comments, :posts, column: :post_id
    add_foreign_key :subscriptions, :users, column: :subscriber_id
    add_foreign_key :subscriptions, :users, column: :publisher_id
  end
end
