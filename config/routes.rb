Rails.application.routes.draw do
  root to: 'homes#top'
  get "home/about" => "homes#about"
  devise_for :users, controllers: {
        registrations: 'users/registrations'
}
  resources :users, only: [:show]
end
