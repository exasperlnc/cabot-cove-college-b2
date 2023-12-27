class ResidentController < ApplicationController
  def index
    @residents = Resident.all
    @average_age = Resident.average(:age)
  end
  
  def show
    @resident = Resident.find(params[:id])
  end
end