class PeopleController < ApplicationController
  def new
    @person = Person.new
end

def create
  @person = Person.new(params[:person])
  if @person.save
    redirect_to new_person_path

  end

end
