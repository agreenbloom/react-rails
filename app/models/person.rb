class Person < ActiveRecord::Base

  def index
    render json: @people
  end

  def show
    render json: @person.id
  end

  private

  def search_people
    @people = if params[:search].present?
      Person.seach(params[:search])
    else
      Person.all
    end
  end

end
