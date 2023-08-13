class Subscription < ApplicationRecord
  belongs_to: publisher, class_name: 'User', foreign_key: :publisher_id
  belongs_to: subscriber, class_name: 'User', foreign_key: :subscriber_id
end
