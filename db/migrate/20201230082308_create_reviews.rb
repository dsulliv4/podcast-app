class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :stars
      t.integer :description
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :podcast, null: false, foreign_key: true

      t.timestamps
    end
  end
end
