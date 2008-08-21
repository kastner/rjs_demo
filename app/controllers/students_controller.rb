class StudentsController < ApplicationController
  
def index
  @students = Student.find(:all)
end

def reorder
  seats = params[:seats]
  seats.each_with_index do |student_id, i|    
    next if student_id.empty?
    Student.find(student_id).update_attributes({:seat => i+1})
  end
  
  render :update do |page|
    page.alert "Updated!"
  end
end

def show; end
def new; end
def create; end
def edit; end
def update; end
def destory; end

end
