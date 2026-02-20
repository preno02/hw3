Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#   # 
get("/", { :controller => "places", :action => "index" })
get("/places", { :controller => "places", :action => "index" })
get("/places", :controller => "places", :action => "show")

#   # Defines the root path route ("/")
#   # get("/", { :controller => "articles", :action => "index" })
#   # 
  resources "places"


  resources "entries"
  
end
