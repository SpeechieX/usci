class Criminal < ApplicationRecord
    belongs_to :operator
    has_many :crimes, dependent: :destroy
end
