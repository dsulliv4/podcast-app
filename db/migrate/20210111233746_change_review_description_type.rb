class ChangeReviewDescriptionType < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :description, :string 
  end
end
