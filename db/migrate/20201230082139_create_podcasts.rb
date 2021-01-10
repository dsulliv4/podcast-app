class CreatePodcasts < ActiveRecord::Migration[6.0]
  def change
    create_table :podcasts do |t|
      t.string :name
      t.string :author
      t.string :description
      t.timestamps
    end
  end
end
