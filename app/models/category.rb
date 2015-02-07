class Category < ActiveRecord::Base
  has_many :dreams

  validates :title, presence: true

end
