Rails.application.routes.draw do
  root 'films#index'
  get 'films/auto_complete' => 'films#auto_complete', as: 'auto_complete'
end
