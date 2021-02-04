class Message < ApplicationRecord
  belongs_to :topic

  # Unable to set dynamic target via broadcasts_to
  after_create_commit -> { broadcast_append_to room, target: broadcast_target }
  after_update_commit -> { broadcast_replace_to room, target: broadcast_target }
  after_destroy_commit -> { broadcast_remove_to room, target: broadcast_target }

  def room
    topic.room
  end

  def broadcast_target
    topic.snakecase
  end

end
