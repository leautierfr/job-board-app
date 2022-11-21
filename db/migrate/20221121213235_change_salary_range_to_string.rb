class ChangeSalaryRangeToString < ActiveRecord::Migration[7.0]
  def change
    remove_column :jobs, :salary_range, :integer
    add_column :jobs, :salary_range, :string
  end
end
