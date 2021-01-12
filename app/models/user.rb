class User < ApplicationRecord
    has_many :reviews
    has_many :podcast_reviews, through: :reviews, source: :podcast
    
    has_many :users_podcasts
    has_many :user_reviews, through: :reviews, source: :user

    has_secure_password

    validates :username, uniqueness: true, presence: true
end
