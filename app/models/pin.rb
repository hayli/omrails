class Pin < ActiveRecord::Base
  attr_accessible :description, :image

  belongs_to :user
  has_attached_file :image, styles: { medium: "320x240>"}

  validates :description, presence: true, length: { maximum: 500 }
  validates :user_id, presence: true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,  
  														 content_type: { content_type: ['image/jpeg', 'image/jpg', 'image/gif', 'image/png', 'image/tiff']},
  														 size: { less_than: 5.megabytes }

end
