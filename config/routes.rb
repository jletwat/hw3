Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get("/places", {:controller => "places", :action => "index"})
  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })
  resources "places" do
    resources "entries"
  end
end
