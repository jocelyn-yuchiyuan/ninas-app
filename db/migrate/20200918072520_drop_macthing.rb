class DropMacthing < ActiveRecord::Migration[6.0]
  def change
    drop_table :macthings do |t|
      t.boolean "status"
      t.bigint "pet_id", null: false
      t.bigint "user_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["pet_id"], name: "index_macthings_on_pet_id"
      t.index ["user_id"], name: "index_macthings_on_user_id"
    end
  end
end
