Rails.application.routes.draw do
  Blogger::Application.routes.draw do
    root to: 'articles#index'
    resources :articles do
      resource :comments
    end
  end
end
