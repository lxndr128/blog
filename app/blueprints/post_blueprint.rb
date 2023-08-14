class PostBlueprint < Blueprinter::Base
  identifier :id
  fields :username, :title, :body, :created_at
  field :publisher_id do |post|
    post.user_id
  end
end
