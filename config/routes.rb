Rails.application.routes.draw do
	namespace :v1 do
		match 'image', to: 'image#index', via: :get
		match 'image', to: 'image#create', via: :post
		match 'image', to: 'image#edit', via: :put
		match 'image', to: 'image#destroy', via: :delete
	end
end
