class Blog < ApplicationRecord
  enum status: {draft: 0, published: 1}

  extend FriendlyId
  friendly_id :title , use: :slugged
  validates :title , :body, presence: true , length:{ minimum: 3 }
  belongs_to :topic
end
