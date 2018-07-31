class Portfolio < ApplicationRecord
  include Placeholder
  has_many :technologies
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attrs| attrs['name'].blank? }
  validates_presence_of :title, :subtitle, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  scope :RoR, -> { where(subtitle: "Ruby On Rails") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||=  Placeholder.image_generator(height: "600", width: "300")
    self.thumb_image ||=  Placeholder.image_generator(height: "350", width: "250")
  end

end
