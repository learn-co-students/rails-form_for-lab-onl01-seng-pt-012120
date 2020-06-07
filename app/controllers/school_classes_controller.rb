class SchoolClassesController < ApplicationController

    def new
        @school_class = School_class.new
    end

   
    def create
        @school_class = School_class.new(school_class_params(:title, :room_number))
		@school_class.save
		redirect_to school_class_path(@school_class)
    end

    def show
        @school_class = School_class.find(params[:id])
    end

    def edit 
        @school_class = School_class.find(params[:id])
    end

    def update
        @school_class = School_class.find(params[:id])
		@school_class.update(school_class_params(:title, :room_number))
		redirect_to school_class_path(@school_class)
    end
    
    private

    def school_class_params(*args)
		params.require(:school_class).permit(*args)
	  end

end