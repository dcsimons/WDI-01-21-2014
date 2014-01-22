BogApp::Application.routes.draw do

  root to: "creatures#index"

  get "/creatures", to: "creatures#index"

  get "/creatures/new", to: "creatures#new"

  get "/creatures/view", to: "creatures#view"

  get "/creatures/:id", to: "creatures#show"

  get "/creatures/:id/edit", to: "creatures#edit"

  get "/creatures/:id/delete", to: "creatures#delete"

  post "/creatures", to: "creatures#create"

  put "/creatures/:id", to: "creatures#update"

  delete "/creatures/:id", to: "creatures#destroy"


end
