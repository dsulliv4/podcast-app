class AddAutoIncrementInPodcast < ActiveRecord::Migration[6.0]
  def change
    change_column :podcasts, :id, :integer, limit: 8, auto_increment: true
   end
end
