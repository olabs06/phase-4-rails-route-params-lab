class StudentsController < ApplicationController

  def index
    if params[:name]
      students = Student.where(first_name: params[:name].capitalize).or(Student.where(last_name: params[:name].capitalize))
      render json: students
    else
      render json: Student.all
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
