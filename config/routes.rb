Rails.application.routes.draw do
  root 'todos#index'
  match "/create", :to => 'todos#create', :via => :post
  get '/complete/:id' => 'todos#complete', as: :complete
  get '/delete/:id' => 'todos#delete', as: :delete
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
