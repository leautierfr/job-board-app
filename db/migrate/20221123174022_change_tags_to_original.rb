class ChangeTagsToOriginal < ActiveRecord::Migration[7.0]
  def change
    change_column :jobs, :tags, :text, array: true, default: []
  end
end
