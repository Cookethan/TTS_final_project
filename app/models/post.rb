class Post < ApplicationRecord

    has_many :comments, as: :commentable
    belongs_to :user
    has_many :users, through: :saved_posts
    has_many :saved_posts
    paginates_per 15
end
