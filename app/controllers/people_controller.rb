class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    render json: @person.id
  end

  def create
    @people = Person.new(person_params)

    if @person.save
      render json: @person
    else
      render json: @person.errors, status: :unprocessable_entity
    end
  end

  private

  def search_people
    @people = if params[:search].present?
      Person.seach(params[:search])
    else
      Person.all
    end
  end

  def person_params
    params.require(:person).permit(:name, :email, :avatar)
  end


end
