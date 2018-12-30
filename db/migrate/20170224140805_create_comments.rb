class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.text :content

      t.timestamps
    end
    add_index :comments, [:user_id, :product_id, :created_at]
  end
end
