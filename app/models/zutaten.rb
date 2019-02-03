class Zutaten < ApplicationRecord
    mount_uploader :image, ImageUploader
    serialize :image, JSON
    belongs_to :user, optional: true
    
    
    #checks if data was put into the text field
    validates :name, presence: true
    #checks if the length is within the paramers of the text
    validates :name, length: {maximum: 50, too_long: "%[count] characters is the maximum allowed length. Please shorten it a bit"}
    
    #all given values for the Satisfaction
    validates :price,numericality: {only_integer: true}, length: {maximum:7}
end
