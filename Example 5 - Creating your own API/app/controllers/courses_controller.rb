class CoursesController < ApplicationController

 before_action :set_course, only: [:show, :update, :destroy]
  respond_to :json

  def index
    respond_with Course.all
  end

  def create
    respond_with Course.create(book_params)
  end

  def show
    respond_with @course
  end

  def update
    respond_with @course.update(course_params)
  end

  def destroy
    respond_with @course.destroy
  end

  private
  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name)
  end

end
