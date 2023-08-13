class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  has_many :publishers_relations, class_name: 'Subscription', foreign_key: :subscriber_id, dependent: :destroy
  has_many :subscribers_relations, class_name: 'Subscription', foreign_key: :publisher_id, dependent: :destroy
  has_many :subscribers, class_name: 'User', through: :subscribers_relations 
  has_many :publishers, class_name: 'User', through: :publishers_relations
end
