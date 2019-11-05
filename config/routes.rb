Rails.application.routes.draw do
  root 'topics#index'
  # get 'topics/index'
  get 'topics/show/:id' => 'topics#show', as: :topics_show
  post 'topic/create'  => 'topics#create'
  delete 'topics/delete/:id' => 'topics#delete', as: :topic_delete
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post 'posts/create' => 'post#create', as: :post_create
end
