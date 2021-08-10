class StudentsController < ApplicationController

  def index
    if params[:name].blank?
      students = Student.all
      render json: students
    elsif 
      student = Student.find_by(last_name: params[:name].capitalize)
      render json: student
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end

