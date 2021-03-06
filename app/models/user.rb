class User < ActiveRecord::Base
  has_many :notes, inverse_of: :user, dependent: :destroy

  validates :username, presence: true, uniqueness: true, length: { in: 3..40 }

  before_create :set_api_key

  def set_api_key
    self.api_key = SecureRandom.hex(24)
  end
end
