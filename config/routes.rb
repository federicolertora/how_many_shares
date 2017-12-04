Rails.application.routes.draw do
    
  resources :stock_symbols
    get 'welcome/welcomepage'

    root 'welcome#welcomepage'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

