class Meme < ApplicationRecord
    has_many :meme_references

    validates :image, :title, :description, presence: true
end
