class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :subject, polymorphic: true
  has_many :comments, as: :subject
end
