Rails.application.routes.draw do

  resources :students
  resources :instructors
  resources :courses
  resources :enrollments

end
