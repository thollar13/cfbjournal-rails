class AddAndRemoveColumnsFromPicks < ActiveRecord::Migration
  def change


    add_column :picks, :acc_coastal, :string
    add_column :picks, :acc_atlantic, :string

    add_column :picks, :big_ten_west, :string
    add_column :picks, :big_ten_east, :string

    add_column :picks, :pac_twelve_north, :string
    add_column :picks, :pac_twelve_south, :string

    add_column :picks, :sec_east, :string
    add_column :picks, :sec_west, :string

    add_column :picks, :sec_champ, :string
    add_column :picks, :pac_twelve_champ, :string

    add_column :picks, :nation_runner_up, :string
    add_column :picks, :championship_total_points, :integer


  end
end
