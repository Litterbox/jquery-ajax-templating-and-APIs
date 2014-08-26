class InstructorsController < ApplicationController

 before_action :set_instructor, only: [:show, :update, :destroy]
  respond_to :json, :html

  def index
    @instructors = Instructor.all
    respond_with @instructors.to_json(
      :include => [
        { :students => {:only => :name} }
        ])
  end

  def create
    respond_with Instructor.create(book_params)
  end

  def show
    respond_with @instructor.to_json(
      :include => [
        {
          :students => {:only => :name}
        }
      ])
  end

  def update
    respond_with @instructor.update(instructor_params)
  end

  def destroy
    respond_with @instructor.destroy
  end

  private
  def set_instructor
    @instructor = Instructor.find(params[:id])
  end

  def instructor_params
    params.require(:instructor).permit(:name)
  end
end
