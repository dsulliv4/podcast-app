class Podcast < ApplicationRecord
    before_create :set_id

    has_many :reviews
    has_many :user_reviews, through: :reviews, source: :user

    has_many :users_podcasts
    has_many :podcast_reviews, through: :users_podcasts, source: :podcast

    belongs_to :category

    private

def set_id
  self.id = Podcast.last.id + 1 
end

def 

end