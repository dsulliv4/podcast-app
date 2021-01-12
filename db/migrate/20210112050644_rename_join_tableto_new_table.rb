class RenameJoinTabletoNewTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :user_podcasts, :users_podcasts
  end
end
