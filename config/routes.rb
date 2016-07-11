Rails.application.routes.draw do
  root 'states#index'
  resources :states do
    resources :cities do
      resources :categories do
        resources :subcategories do
          resources :postings, except: [:destroy, :edit]
        end
      end
    end
  end



  get '/states/:state_id/cities/:city_id/categories/:category_id/subcategories/:subcategory_id/postings/:id/edit' => 'postings#edit'
  put '/states/:state_id/cities/:city_id/categories/:category_id/subcategories/:subcategory_id/postings/:id' => 'postings#update'
  delete '/states/:state_id/cities/:city_id/categories/:category_id/subcategories/:subcategory_id/postings/:id/delete' => 'postings#destroy'
end

