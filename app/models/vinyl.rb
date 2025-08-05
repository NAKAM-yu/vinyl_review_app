class Vinyl < ApplicationRecord
    has_one_attached :image   
    
    validates :title, presence: true
    validates :artist, presence: true
    validates :review, presence: true, length: { minimum: 10} 

end
