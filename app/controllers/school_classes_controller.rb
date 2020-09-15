class SchoolClassesController < ApplicationController

    def show
		@school_classes = SchoolClass.find(params[:id])
	end

	def new
		@school_classes = SchoolClass.new
	end

	def create
		@school_classes = SchoolClass.new(school_classes_params(:title, :room_number))
		@school_classes.save
		redirect_to school_classes_path(@school_classes)
	  end
	   
	  def update
		@school_classes = SchoolClass.find(params[:id])
		@school_classes.update(school_classes_params(:title, :room_number))
		redirect_to school_classes_path(@school_classes)
	  end

	  def edit
		@school_classes = SchoolClass.find(params[:id])
	  end
	   

end 