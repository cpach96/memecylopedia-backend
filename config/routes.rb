Rails.application.routes.draw do
  
    namespace :api do
      namespace :v1 do
      resources :memes
      root 'homepage#index'
        end
    end
    
    
end


