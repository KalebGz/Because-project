class Comment < ApplicationRecord
    belongs_to :post
    belongs_to :user 
    has_many :replies 

    validates :message, presence: true
    validates :message, lengtth: { minimum: 250 }, unless: -> { message.include?('?')}

end
