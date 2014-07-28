Rails.application.routes.draw do
  get '/user/:id' => 'application#show'
  get '/new_user' => 'application#form'
  get 'create_user' => 'application#create'
end
