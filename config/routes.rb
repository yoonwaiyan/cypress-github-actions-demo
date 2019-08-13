# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  scope '/api' do
    resources :todos
  end

  devise_scope :user do
    get 'sign_in_before_test' => 'users/sessions#sign_in_before_test' if Rails.env.test?
  end
end
