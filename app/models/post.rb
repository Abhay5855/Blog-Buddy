class Post < ApplicationRecord
  belongs_to :user
   
  has_one_attached :image

  has_rich_text :content

  validates :title,  length: { maximum: 300,
    too_long: "%{count} characters is the maximum allowed" }, presence: true

  validates :image, presence: true

  validates :content, presence: true

  validates  :image_format, presence: true
  
    private

  def image_format
    return unless image.attached?
    acceptable_types = ["image/jpeg", "image/png", "image/jpg"]
    unless acceptable_types.include?(image.blob.content_type)
      errors.add(:image, "must be a JPEG, JPG, or PNG")
    end
  end
end
