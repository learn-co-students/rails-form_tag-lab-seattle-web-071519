class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end

  def new
  end

  def create
    session[:form_params] = params.inspect
    redirect_to new_student_path
  end

   #QUESTION: why "new_student_path"?

    # @new_student =Student.new(first_name: params[:first_name], last_name: params[:last_name])
    # redirect_to students_path

  private

    def set_student
      @student = Student.find(params[:id])
    end
end


