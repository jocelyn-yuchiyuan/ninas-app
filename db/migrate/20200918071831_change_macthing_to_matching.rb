class ChangeMacthingToMatching < ActiveRecord::Migration[6.0]
  def change
    rename_table :macthing, :matching
  end
end
