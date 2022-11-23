class AddTagsToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :tags, :text, array: true, default: []
  end
end
