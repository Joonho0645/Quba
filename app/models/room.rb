class Room < ApplicationRecord
  has_many :users, dependent: :destroy
  has_one :chat
  validates :title, presence: true
  validates :title, uniqueness: {scope: :description,
    message: "Don't try to create a same room!"}
end
