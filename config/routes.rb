Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :memes do
        resources :meme_references
        end
    end
end


end

