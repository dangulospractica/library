Rails.application.routes.draw do
    resources :authors do
        resources :books
    end
    
    namespace :admin do
        resources :stats
    end
    
end
