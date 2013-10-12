class AddTeamInfoToCbos < ActiveRecord::Migration
  def change
    add_column :cbos, :team_info, :text
  end
end
