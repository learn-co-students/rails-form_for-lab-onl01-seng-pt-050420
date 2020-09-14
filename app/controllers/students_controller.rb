class StudentsController < ApplicationController
    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end

    def show
        find_params
    end

    def create
        @student = Student.create(post_params)
        redirect_to student_path(@student)
    end

    def edit
        find_params
    end

    def update
        find_params
        @student.update(post_params)
        redirect_to student_path(@student)
    end

    private

    def post_params
        params.require(:student).permit("first_name", "last_name")
    end

    def find_params
        @student = Student.find(params[:id])
    end
end