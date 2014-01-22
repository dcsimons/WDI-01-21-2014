RouteApp::Application.routes.draw do

  # create the root route
  # get "/", to: "planes#index" ... can also be written as follows:
  root to: "planes#index"

  get "/planes", to: "planes#index"

  get "/planes/new", to: "planes#new"

  get "/planes/:id", to: "planes#show"

  get "/planes/:id/edit", to: "planes#edit"

  post "/planes", to: "planes#create"  # After the #, goes the name of the method that will be used in the controller

  put "/planes/:id", to: "planes#update"

end

# PLAN FOR SUBMITTING A NEW PLANE
## 1.) we want to submit a "POST" to "/planes"
#       b). Route the "POST" to "PlanesController" 
#          send it to the "#create" 
# 2.) In the create
#       a) read the params for the plane
#       b.) save the plane to our database 
# 3.) Sending redirect to the "#index" method
