Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
#   # 

get("/places", :controller => "places", :action => "index")
# get("/places/France", :controller => "places", :action => "france")
# get("/places/Florida", :controller => "places", :action => "florida")
# get("/places/Colorado", :controller => "places", :action => "colorado")
# get("/place/Montana", :controller => "places", :action => "montana")



#   # Defines the root path route ("/")
#   # get("/", { :controller => "articles", :action => "index" })
#   # 
  # resources "places"
  # resources "entries"
  
end
