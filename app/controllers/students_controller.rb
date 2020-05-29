class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.new
  end

  def edit
    @student = Student.find(params[:id])
  end

  def post_params
    params.require(:student).permit(:first_name, :last_name)
  end

  def create
    @student = Student.new(student_params(:first_name, :last_name))
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end

  private

  def post_params(*args)
    params.require(:student).permit(*args)
  end

end
