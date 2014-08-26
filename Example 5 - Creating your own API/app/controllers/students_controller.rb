class StudentsController < ApplicationController

  before_action :set_student, only: [:show, :update, :destroy]
  respond_to :json, :html

  def index
      @student = Student.all
      # if request.format == 'json'
        respond_with @student.to_json(:include => { :instructor => { :only => :name } })
      # end
  end

  def create

    i = Instructor.find(params[:instructor_id])
    new_student = Student.create(student_params)
    i.students << new_student
    redirect_to '/students'
  end

  def new

    @student =  Student.new()
    @instructor_data = Instructor.all.map do |i|
       [i.name, i.id.to_i]

    end
    render :layout => false
  end

  def show
    # @instructor_name = @student.instructor.name
    respond_with @student.to_json(
      :include => {
        :instructor => {
          :only => :name
          }
        }
      )
    # respond_with student: @student, instructor_name: @instructor_name
  end

    def edit
    @student = Student.find(params[:id])
    @instructor_data = Instructor.all.map do |i|
       [i.name, i.id.to_i]
      end

    respond_with @student.to_json(
      :include => {
        :instructor => {
          :only => :name
          }
        }
      )
    # respond_with student: @student, instructor_name: @instructor_name
    end

  def update
  if request.format == 'json'
    respond_with @student.update_attributes(student_params)
  else
    @student.update_attributes(student_params)
    redirect_to '/students'
  end

  end

  def destroy
    @student = Student.find(params[:id])
    respond_with @student.destroy
  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :age, :instructor_id)
  end
end
