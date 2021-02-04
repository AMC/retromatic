class Message < ApplicationRecord
  belongs_to :topic

  # Unable to set dynamic target via broadcasts_to
  # This will append the message to the correct topic
  after_create_commit -> { broadcast_append_to room, target: broadcast_target }
  # Default is based on pluralized class name and id
  after_update_commit -> { broadcast_replace_to room }
  # Does not support setting a target
  after_destroy_commit -> { broadcast_remove_to room }

  def room
    topic.room
  end

  def broadcast_target
    topic.snakecase
  end


end
