class Dream < ActiveRecord::Base
  belongs_to :category
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :content, presence: true
end
