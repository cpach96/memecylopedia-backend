class MemeReference < ApplicationRecord
    belongs_to :meme

    validates :name, presence: true
end
