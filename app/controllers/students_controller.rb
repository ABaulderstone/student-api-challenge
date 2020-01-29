class StudentsController < ApplicationController
    before_action :set_student, except: [:index, :create]
    
    def index 
        @students = Student.all
    
    end 

    def create
        @student = Student.new(student_params)
        @student.save  

    end 
    
    def show 

    end 

    def update 

    end 

    def destroy 

    end 

    private 
    def set_student
        id = params[:id]
        @student = Student.find(id)
    end  

    def student_params
        params.require(:student).permit(:name, :age, :gender, :bio)
    end


end
