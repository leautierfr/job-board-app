class ChangeActiveToString < ActiveRecord::Migration[7.0]
  def change
    change_column :jobs, :active, :string
  end
end
