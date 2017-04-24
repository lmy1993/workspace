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
      get 'reset'=>'workeraccounts#reset' ,:as =>'reset_password'
      #put :change_current_city
    end
  end

  resources :stations do
  	collection do
  		get :suggestion
  	end
  end

  resources :couriers
<<<<<<< HEAD
  resources :factories

  root 'workeraccounts#index'
=======
>>>>>>> a82a824e011bd455532870340f2a7e3f8f67af7c
>>>>>>> 8eb7e8e12c1eefaadda8ec00376f7d30b84e2337
end
