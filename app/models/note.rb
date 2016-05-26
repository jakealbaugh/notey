class Note < ActiveRecord::Base
  belongs_to :user, inverse_of: :notes

  validates :message, presence: true
  validates :color, format: /\A#[a-fA-F0-9]{3}([a-fA-F0-9]{3})?\z/
end
