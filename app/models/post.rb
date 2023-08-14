class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :subject

  delegate :username, to: :user
end
