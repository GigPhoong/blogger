Rails.application.routes.draw do
  Blogger::Application.routes.draw do
    root to: 'articles#index'
    resources :articles do
      resource :comments
    end
    resources :authors
    resources :author_sessions, only: [ :new, :create, :destroy]

    get 'login'  => 'author_sessions#new'
    get 'logout' => 'author_sessions#destroy'
  end
end
