class Meme < ApplicationRecord

    validates :image, :title, :description, presence: true
end
