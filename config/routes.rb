Rails.application.routes.draw do
  # namespace :staff , path: "" do
  #   root "top#index"
  #   get "login" => "sessions#new", as: :login
  #   resource :session, only: [ :create, :destroy ]
  #   resource :account, expect: [:new, :cerate, :destroy]
  # end
  constraints host: "baukis2.example.com" do
    namespace :staff, path: "" do
      root "top#index"
      get "login" => "sessions#new", as: :login
      resource :session, only: [ :create, :destroy ]
      resource :account, expect: [ :new, :create, :destroy ]
    end
  end
  constraints host: "baukis2.example.com" do
    namespace :admin, path: "admin" do
      root "top#index"
      get "login" => "sessions#new", as: :login
      resource :session, only: [ :create, :destroy ]
      resource :account, expect: [ :new, :create, :destroy ]
    # get "staff_members" => "staff_members#index"
    #  get "staff_members/:id" => "staff_members#show"
    #  get "staff_members/new" => "staff_members#new"
    #  get "staff_members/:id/edit" => "staff_members#edit"
    #  post "staff_members" => "staff_members#create"
    #  patch "staff_members/:id" => "staff_members#update"
    #  delete "staff_members/:id" => "staff_members#destroy"
    resource :session, only: [ :create, :destroy ]
    resources :staff_members
  end
end 
  namespace :customer do
    root "top#index"
  end

end
