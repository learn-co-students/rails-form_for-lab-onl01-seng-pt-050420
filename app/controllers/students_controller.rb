class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def show
        @student = Student.find_by(id: params[:id])
    end 
    
    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_attributes(:first_name, :last_name))
        @student.save
        redirect_to student_path(@student)
    end

    def edit
        @student = Student.find_by(id: params[:id])
    end

    def update
        @student = Student.update(student_attributes(:first_name, :last_name))
        redirect_to student_path(@student)
      end

    private
    def student_attributes(*args)
        params.require(:student).permit(*args)
    end
end