class SubscriptionBlueprint < Blueprinter::Base
  identifier :id
  fields :subscriber_id, :publisher_id
end
