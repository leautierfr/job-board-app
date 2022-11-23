class ChangeTagsToNewarray2 < ActiveRecord::Migration[7.0]
  def change
    change_column :jobs, :tags, :text, array: true
  end
end
