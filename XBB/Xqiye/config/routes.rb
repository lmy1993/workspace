Rails.application.routes.draw do
<<<<<<< HEAD
  resources :worker_messages
  # root :'worker_messages#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :workeraccounts

  resources :workeraccounts do 
    member do 
      get :reset_password
      #put :change_current_city
    end
  end

  resources :stations do
  	collection do
  		get :suggestion
  	end
  end

  resources :couriers
>>>>>>> a82a824e011bd455532870340f2a7e3f8f67af7c
end
