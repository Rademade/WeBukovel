Rails.application.routes.draw do

  mount RademadeAdmin::Engine => '/admin'

  namespace :rademade_admin do
    admin_resources :items
  end

  scope :api, module: :api, defaults: {format: :json} do
    resources :items
  end

end
