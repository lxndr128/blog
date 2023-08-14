class PostBlueprint < Blueprinter::Base
  identifier :id
  fields :username, :title, :body, :user_id, :created_at
end
