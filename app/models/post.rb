class Post < ApplicationRecord
    CATEGORIES = ["Fiction","Non-Fiction"]
    validates :title, presence: true
    validates :category, inclusion:{
        in: CATEGORIES,
        # message: `must be one of: #{CATEGORIES.join(',')}`
    }
    validates :content, length: { minimum: 100 }
end
