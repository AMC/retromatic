class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def snakecase
    self.name.gsub(/( )/, '_').downcase
  end
end
