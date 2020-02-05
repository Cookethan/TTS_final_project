class SavedPost < ApplicationRecord

    belongs_to :post
    belongs_to :user

    paginates_per 15
end
