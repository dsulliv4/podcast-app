class AddDescriptionToPodcasts < ActiveRecord::Migration[6.0]
  def change
    add_column :podcasts, :description, :string 
  end
end
