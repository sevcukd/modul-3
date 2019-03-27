class Room < ApplicationRecord
  belongs_to :hotel
  mount_uploaders :photos, PhotoUploader
  serialize :photos, JSON # If you use SQLite, add this line.
end
