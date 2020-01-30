class StudentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_student, except: [:index, :create]
    
    def index 
        @students = Student.all
        render :json => @students
    
    end 

    def create
        @student = Student.new(student_params)
        @student.save  

    end 

    def show 
        render :json => @student
    end 

    def update
        @student.update(student_params)
        render :plain => "Student at id: #{@student.id} succesfully updated"
    end 

    def destroy 
        render :plain => "Student at id: #{@student.id} succesfully deleted"
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
