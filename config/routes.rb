Rails.application.routes.draw do
  get 'page/index'

  devise_for :users, controllers: { sessions: 'sessions' }

  get 'a_protected_page' => 'page#index'
end
