class StudentsController < ApplicationController

    def show
		@students = Student.find(params[:id])
	end

	def new
		@students = Student.new
	end

	def create
		@students = Student.new(student_params(:first_name, :last_name))
		@students.save
		redirect_to student_path(@students)
	  end
	   
	  def update
		@students = Student.find(params[:id])
		@students.update(student_params(:first_name, :last_name))
		redirect_to student_path(@students)
	  end

	  def edit
		@students = Student.find(params[:id])
	  end

end 