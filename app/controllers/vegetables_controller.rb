class VegetablesController < ApplicationController
    def index
        @vegetables = Vegetable.all
    end
    
    def new
        @vegetable = Vegetable.new
    end
    
    def create
        @vegetable = Vegetable.create(vegetable_params)
        redirect_to vegetable_path(@vegetable.id)
    end
    
    def edit
        @vegetable = Vegetable.find(params[:id])
    end
    
    def update
        @vegetable = Vegetable.find(params[:id])
        @vegetable.update
        redirect_to vegetable_path(@vegetable.id)
    end
    
    def show
        @vegetable = Vegetable.find(params[:id])
        @result = @vegetable.results.to_a            #array of users
    end
    
    def destroy
        @vegetable = Vegetable.find(params[:id])
    end

    private

    def vegetable_params
        params.require(:vegetable).permit(:name, :cal_per_gram)
    end
end
