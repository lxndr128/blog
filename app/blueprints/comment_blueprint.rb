class CommentBlueprint < Blueprinter::Base
  identifier :id
  fields :username, :body, :created_at
  association :comments, blueprint: CommentBlueprint
end
