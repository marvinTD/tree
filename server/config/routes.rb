Rails.application.routes.draw do
  defaults format: :json do
    resources :youtube_urls, only: [:index, :create]
  end
end
