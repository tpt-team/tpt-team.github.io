class AddUserPointsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :user_points, :integer, default: 5
  end
end
