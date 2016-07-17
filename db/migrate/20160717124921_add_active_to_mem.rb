class AddActiveToMem < ActiveRecord::Migration
  def change
    add_column :mems, :active, :boolean
    Mem.update_all(active: false)
  end
end
