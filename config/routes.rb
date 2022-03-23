# Rails.application.routes.draw do
#   post "/graphql", to: "graphql#execute"
#   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

#   # Defines the root path route ("/")
#   # root "articles#index"
# end

Rails.application.routes.draw do
    if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
    end
    post "/graphql", to: "graphql#execute"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end