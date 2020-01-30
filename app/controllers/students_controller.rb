class StudentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :set_student, except: [:index, :create]
    
    def index 
        @students = Student.all
        render :json => @students
    
    end 

    def create
        begin
            @student = Student.new(student_params)
             if @student.save
                render :json => @student
             else
                render :json => { errors: @student.errors }, :status => 422
             end 
        rescue ArgumentError => e 
            render :json => { errors: e.message }, :status => 422
        end 


    end 

    def show 
        render :json => @student
    end 

    def update
        begin 
            @student.update!(student_params)
            render :plain => "Student at id: #{@student.id} succesfully updated"
        rescue ActiveRecord::RecordInvalid => e
            render :json => { errors: e.message }, :status => 422
        end 

        
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
