class ResidentController < ApplicationController
  def index
    @residents = Resident.all
  end 
end