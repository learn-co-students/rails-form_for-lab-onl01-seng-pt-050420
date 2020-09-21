Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, except: [:destroy, :index]
  # resources :students, only: [:new, :create, :show, :edit, :update]
  # resources :school_classes, only: [:new, :create, :show, :edit, :update]
  resources :school_classes, except: [:destroy, :index]
end
