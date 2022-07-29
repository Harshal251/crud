Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "add#index"
  get "/add/edit:id" , to: "add#edit" , as: :edit
  post "/add/update:id" , to: "add#updatedata" , as:  :update
  get "/del:id" , to: "add#del" , as: :del
  get "/add/new" ,to: "add#new" , as: :new
  get "/add/:id" , to: "add#show" ,as: :show
  post "/add/data" ,to: "add#data" , as: :data

  
end
