Rails.application.routes.draw do
  get '/:username', to: 'accounts#show', as: 'account'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'welcome#index'
end
