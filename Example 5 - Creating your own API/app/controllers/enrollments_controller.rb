class EnrollmentsController < ApplicationController

  before_action :set_enrollment, only: [:show, :update, :destroy]
  respond_to :json, :html

  def index
    # respond_with enrollment: Enrollment.all, instructor_name: @instructor_name
    @enrollment = Enrollment.all
    respond_with @enrollment.to_json(
      :include => [
        { :student => {:only => :name} },
        { :course => { :only => :name } }
        ])
  end

  def create
    respond_with Enrollment.create(book_params)
  end

  def show
    respond_with @enrollment.to_json(
      :include => [
        { :student => {:only => :name} },
        { :course => { :only => :name } }
        ])

  end

  def update
    respond_with @enrollment.update(enrollment_params)
  end

  def destroy
    respond_with @enrollment.destroy
  end

  private
  def set_enrollment
    @enrollment = Enrollment.find(params[:id])
  end

  def enrollment_params
    params.require(:enrollment).permit(:name, :age)
  end
end
