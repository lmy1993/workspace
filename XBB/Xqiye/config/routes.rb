Rails.application.routes.draw do
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
end
