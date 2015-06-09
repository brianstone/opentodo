class Item < ActiveRecord::Base
  belongs_to :list

  validates :description, presence: true

  def complete!
    update_attribute(:completed, true)
  end
end
