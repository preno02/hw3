Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#   # 

get("/places", :controller => "places", :action => "index")
get("/places", :controller => "places", :action => "show")

# get("/places/France", :controller => "france", :action => "france")
# get("/places/Florida", :controller => "florida", :action => "florida")
# get("/places/Colorado", :controller => "colorado", :action => "colorado")
# get("/place/Montana", :controller => "montana", :action => "montana")



#   # Defines the root path route ("/")
#   # get("/", { :controller => "articles", :action => "index" })
#   # 
  resources "places"


  resources "entries"
  
end
