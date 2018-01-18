class Criminal < ApplicationRecord
    belongs_to :operator
    has_attached_file :image, styles: { medium: "400x350>"}, presence: true
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    has_many :crimes, dependent: :destroy
end
