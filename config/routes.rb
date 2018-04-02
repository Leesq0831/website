Rails.application.routes.draw do
  root to: 'home#index'


  mount UeditorRails::Engine => '/ueditor'
  post 'ueditor/file', :to => 'ueditor/assets#file'
  post 'ueditor/image', :to => 'ueditor/assets#image'

  get 'umeditor/image_up'
  post 'umeditor/image_up'
  resources :articles
end
