class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.references :subject, polymorphic: true, null: false
      t.integer :post_id, null: false
      t.text :body, null: false

      t.timestamps
    end
  end
end
