Rails.application.routes.draw do
  get 'get_all_slots',to: 'slots#get_all_slots'
  get 'available_slots', to: 'slots#available_slots'
  post 'park_vehicle', to: 'slots#park_vehicle'
  post 'unpark_vehicle', to: 'slots#unpark_vehicle'
  post 'search_vehicle', to: 'slots#search_vehicle'
end
