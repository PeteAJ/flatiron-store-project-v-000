class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.string :status, default: 'not submitted'
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :carts, :users
  end
end
