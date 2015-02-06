class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :dream

  validates :content, presence: true

end
