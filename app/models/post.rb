class Post < ApplicationRecord
  belongs_to :user
   
  has_one_attached :image

  has_rich_text :content

  validates :title,  length: { maximum: 100,
    too_long: "%{count} characters is the maximum allowed", minimum: 5, too_short: "Title should be %{count} characters at least" }, presence: true

  validates :image, presence: true

  validates :content, presence: true

  validate  :image_format
  
    private

  def image_format
    return unless image.attached?
    acceptable_types = ["image/jpeg", "image/png", "image/jpg"]
    unless acceptable_types.include?(image.blob.content_type)
      errors.add(:image, "must be a JPEG, JPG, or PNG")
    end
  end
end
