Rails.application.routes.draw do
  root to: 'statistics#index'

  resources :invoices, only: [:index, :show]

  resources :statistics do
    delete :delete_excel_attachment
    get    :result_excel_analysis
  end

end
