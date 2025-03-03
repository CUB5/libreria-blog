Rails.application.routes.draw do
  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    # Definir la ruta raíz
    root "pages#index"

    # Páginas dinámicas con restricciones de URL
    get ':page', to: 'pages#show', constraints: { page: /about|documentation|work|digitalization|services|examples|contact/ }

    # Rutas para libros
    resources :books

    # Rutas del blog
    resources :posts
    get 'blog', to: 'posts#index'

    # Health check
    get "up" => "rails/health#show", as: :rails_health_check

    # Render dynamic PWA files (mantén esto si lo usas)
    # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
    # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  end

  # Redirección para forzar el idioma predeterminado en la URL
  get "/", to: redirect("/#{I18n.default_locale}")
end
