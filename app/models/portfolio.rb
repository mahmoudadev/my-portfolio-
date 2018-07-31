class Portfolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :main_image, :thumb_image

  def self.angular
    where(subtitle: "Angular")
  end

  scope :RoR, -> { where(subtitle: "Ruby On Rails") }
end
