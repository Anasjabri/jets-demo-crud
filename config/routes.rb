Jets.application.routes.draw do
  resources :posts

  get "files/:id", to: "files#show"

  # Default homepage. This should be replaced.
  root "jets/public#show"

  # Required for API Gateway to serve static utf8 content out of public folder.
  # Replace with your own controller to customize.
  any "*catchall", to: "jets/public#show"
end
