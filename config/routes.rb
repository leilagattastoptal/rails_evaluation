Rails.application.routes.draw do
  #root "archmages#index"

  resources :archmages do
    resources :schools
  end
  resources :mages do
    member do
      patch 'enrollment'
    end
    resources :schools
  end
  resources :schools
end
