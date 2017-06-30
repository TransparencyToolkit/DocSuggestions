Rails.application.routes.draw do
  resources :doc_suggestions
  root to: 'doc_suggestions#index'

  post 'document_submit', to: 'doc_suggestions#create'
end
