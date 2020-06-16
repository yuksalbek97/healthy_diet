class ResultsController < ApplicationController
    def index
        @results = Result.all
    end
    
    def new
        @result = Result.new
    end
    
    def create
        @result = Result.create(result_params)
        
    end
    
    def edit
        @result = Result.find(params[:id])
    end
    
    def update
    
    end
    
    def show
        @result = Result.find(params[:id])
    end
    
    # def destroy
    
    # end

private 

def result_params
    params.require(:result).permit(:user_id, :vegetable_id, :protein_id, :carb_id)
end

end
