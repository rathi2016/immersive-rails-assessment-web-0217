class Appearance < ApplicationRecord
  belongs_to :episodes
  belongs_to :guests
  belongs_to :user
end
