class ResultsController < ApplicationController
    def index
        @results = Result.all
    end
    
    def new
        @result = Result.new
    end
    
    def create
        
        @result = Result.create(result_params)
    
       
        redirect_to result_path(@result)
    end
    
    # def edit
    #     @result = Result.find(params[:id])
    # end
    
    # def update
    
    # end
    
    def show
        @result = Result.find(params[:id])
    end
    
    # def destroy
    
    # end

private 

def result_params
    params.require(:result).permit(:user_id, :vegetable_id, :protein_id, :carb_id, :calories_per_meal)
end

end
