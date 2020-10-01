class StudentsController < ApplicationController

    def index
        @students = Student.all 
    end

    def new
        @student = Student.new
    end
    
    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end

    def show
        find_student_params
    end

    def edit
        find_student_params
    end

    def update
        find_student_params
        @student = Student.update(student_params)
        redirect_to student_path(@student)
    end

    private

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end

    def find_student_params
        @student = Student.find(params[:id])
    end

end