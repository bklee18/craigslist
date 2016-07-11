Rails.application.routes.draw do
  resources :states do
    resources :cities do
      resources :categories do
        resources :subcategories do
          resources :postings
        end
      end
    end
  end
end
