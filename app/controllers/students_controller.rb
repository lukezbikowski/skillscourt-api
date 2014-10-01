class StudentsController < ApplicationController
  def index
    @students = Student.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @students }
    end
  end
  
  
end