class OperatorsController < ApplicationController
    
  
      def new
        @operator = Operator.new
      end
    
      def create
        @operator = Operator.new(operator_params)
        if @operator.save
          session[:operator_id] = @operator.id 
          flash[:notice] = "You have successfully signed up!"
          redirect_to criminals_path 
        else
          render :new
        end
      end
    
    private
    
        # Implement Strong Params
        def operator_params
          params.require(:operator).permit(:name, :email, :password, :password_confirmation)
        end
end


