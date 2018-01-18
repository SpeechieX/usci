class CriminalsController < ApplicationController
    before_action :authorize

    def index
        @criminals = Criminal.all    
    end

    def show 
        @criminal = Criminal.find(params[:id])
    end
    

    def create
        redirect_to root_path if !current_user
        @criminal = Criminal.new(criminal_params)
        @criminal.operator = current_user
        if @criminal.save
            redirect_to criminals_path
            
        else
            render :new 
        end
    end

    

    def new
       @criminal = Criminal.new 
    end

    def destroy
        @criminal = Criminal.find(params[:id])
        @criminal.destroy
        flash[:success] = "The account was destroyed."
        redirect_to criminals_path
    end




end

private

def criminal_params
    params.require(:criminal).permit(:ssn,:name,:alias,:dob,:origin,:bloodtype,:scars_marks_tattoos,:eye_color,:sex,:crimes,:image)
end
