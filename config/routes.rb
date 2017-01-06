Rails.application.routes.draw do
  use_doorkeeper
  mount AIGPlatform::API => '/'
  devise_for :users, controllers: { passwords: 'passwords', registrations: 'registrations' }
  root to: redirect('/api'), as: :unauthenticated_root
  root to: 'application#index'
end
