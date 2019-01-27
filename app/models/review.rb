class Review < ApplicationRecord
    mount_uploader :image, ImageUploader
    serialize :image, JSON
    belongs_to :user, optional: true
    
    
    #checks if data was put into the text field
    validates :text, presence: true
    #checks if the length is within the paramers of the text
    validates :text, length: {maximum: 1000, too_long: "%[count] characters is the maximum allowed length. Please shorten it a bit"}
    
    #all given values for the Satisfaction
    SATISFACTION = %w{Perfect! Good. Ok. Alright. Not pleased.}
end
