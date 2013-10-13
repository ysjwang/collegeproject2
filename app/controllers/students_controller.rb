class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end
  
  def edit
    @student = Student.find(params[:id])
  end
  
  def update
    @student = Student.find(params[:id])

    # In case password is blank - don't force them to chagne password.
    if params[:student][:password].blank?
      params[:student].delete("password")
      params[:student].delete("password_confirmation")
    end
    
    if @student.update_attributes(params[:student])
      # Sign in the user bypassing validation in case his password changed
      sign_in @student, :bypass => true
      redirect_to @student, :flash => {:success => "Student updated." }

    else
      render 'edit'
    end
  end


end
