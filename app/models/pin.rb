class Pin < ApplicationRecord
    belongs_to :user
    has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    validates_attachment :image, presence: true, size: { in: 0..3.megabytes }
    validates :description, presence: true, length: {maximum: 200}
end
