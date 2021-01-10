class UserPodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_podcasts do |t|
    t.integer :user_id
    t.integer :podcast_id    
    end 
  end
end
