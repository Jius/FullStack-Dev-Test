Rails.application.routes.draw do
  resources :interventions, defaults: {format: :json}
end