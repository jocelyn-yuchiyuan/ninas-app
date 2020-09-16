class CreateMacthings < ActiveRecord::Migration[6.0]
  def change
    create_table :macthings do |t|
      t.boolean :status
      t.references :pet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
