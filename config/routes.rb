Rails.application.routes.draw do
  scope module: :public do
    root 'homes#top'
    get 'homes/top'
    get 'homes/about'
  end
  devise_for :customers, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'

  }

  devise_for :admin, controllers: {
    sessions: "admin/sessions"

  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
