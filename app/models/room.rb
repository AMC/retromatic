class Room < ApplicationRecord
  after_update_commit -> { broadcast_replace_to self, target: "reactions", partial: "rooms/reactions" }

  has_many :topics, dependent: :delete_all
end
