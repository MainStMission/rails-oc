# -*- encoding : utf-8 -*-
FoodPantry::Application.routes.draw do

  # resources :missions


  #devise_for :admins
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  resources :donations, :donors, :visits, :neighbors, :missions


  resources :households do
    resources :visits
    resources :neighbors
  end

  resources :visits do
      get :harvest
    end


  #resources :visits

  resources :volunteers do
    member do
      get :sign_in
      get :sign_out
    end
  end
 devise_for :users, :controllers => {:registrations => "users/registrations", :passwords => "users/passwords"}


  get 'print' => 'households#print'


  get 'new_visit' => 'households#new_visit'

  # match 'time_clock' => 'time_clock#show'

  get '/harvest' => 'visits#harvest'

  get '/dashboard/household_summary'        => 'dashboard#household_summary'
  get '/dashboard/visit_summary'            => 'dashboard#visit_summary'
  get '/dashboard/neighbor_summary'         => 'dashboard#neighbor_summary'
  get '/dashboard/donor_summary'            => 'dashboard#donor_summary'
  get '/dashboard/donation_summary'         => 'dashboard#donation_summary'




    root :to => "users#index"

   
  unauthenticated :user do
     root :to => redirect("/users/sign_in"), as: :unauthenticed_user
  end
  #match 'new_user' :to => 'new_user_session', as: :unauthenticated_root

  post '/household_end_point' => 'households#submit'


  devise_for :admin_users
  #
    resources :users

end
