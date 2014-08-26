Rails.application.routes.draw do
	root "students#index"
  resources :students
  resources :instructors
  resources :courses
  resources :enrollments

end
