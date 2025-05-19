class AddVisitedToEntries < ActiveRecord::Migration[7.1]
  def change
    add_column :entries, :visited, :date
  end
end
