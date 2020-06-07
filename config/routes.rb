Rails.application.routes.draw do
  resources :application_forms
  root to: 'application_forms#index'

  resources :invoices, only: [:index, :show]

  resources :statistics do
    delete :delete_excel_attachment
    get    :result_excel_analysis
  end

end
