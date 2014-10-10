class Api::V1::TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
    
    respond_to do |format|
      format.html
      format.json { render :json => @teachers }
    end
  end
end
