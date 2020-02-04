class Post < ApplicationRecord

    has_many :comments, as: :commentable
    belongs_to :user

    paginates_per 15
end
