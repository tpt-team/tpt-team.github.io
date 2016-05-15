Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'persons/profile', as: 'user_root'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  root 'universities#index'

  get 'categories/(:id)', to: 'faculties#show', as: :categories

  resources :universities do
    resources :faculties do
      resources :documents do
        member do
          get :download
        end
      end
    end
  end

end
