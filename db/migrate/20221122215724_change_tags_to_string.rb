class ChangeTagsToString < ActiveRecord::Migration[7.0]
  def change
    change_column :jobs, :tags, :string, array: true, default: []
  end
end
