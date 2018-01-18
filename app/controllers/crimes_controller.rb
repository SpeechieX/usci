class CrimesController < ApplicationController

def show
    @crimes = Crime.all
end

def create
    @crime = Crime.new(crime_params)
    @crimes.operator = current_user
    
    if @crimes.save
        redirect_to new_criminal_path 
    else
        render :new
    end
end
private

def crime_params
    params.require(:crime).permit(:charge, :date_of_charge, :victim, :case_closed)
end