class StudentsController < ApplicationController

#indexing all Students
def index
  @students = Student.all
end

def show
   @student = Student.find(params[:id])
 end
# end

#associated with students/new
  def new
    @student = Student.new
  end

# def index
#    @students = Student.all
#
def edit
  @student = Student.find(params[:id])
end
# end

#by default hitting submit will attempt to post to the uri associated with create, which is /students
#the redirect ensures you get back to a fresh new form
#notice you can use the parameters you entered on the form
  def create
    @student = Student.new(params[:student].permit(:firstname, :lastname))
    if @student.save
      redirect_to(@student)#new_student_path
    else
        render 'new'
    end
  end


  def update
    @student = Student.find(params[:id])
    if @student.update(params[:student].permit(:firstname, :lastname))
      redirect_to @student
    else
      render 'edit'
    end
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to(students_path)
  end

end

#
# class StudentsController < ApplicationController
#   def new
#     @student = Student.new
#     @students = Student.all
#   end
#
#   def create
#     @student = Student.new(student_params)
#  if @student.save
#    redirect_to new_student_path
#  end
#   end
#
#   def student_params
#     params.require(:student).permit(:firstname, :lastname)
#   end
# end
