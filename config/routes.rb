Rails.application.routes.draw do
  resources :contacts
  root "contacts#index"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
