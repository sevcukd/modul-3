class Hotel < ApplicationRecord
  has_one :contact
  has_many :rooms
  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON # If you use SQLite, add this line.
end
