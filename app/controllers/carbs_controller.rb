class CarbsController < ApplicationController
    
      def index
        @carbs = Carb.all
      end
    
      def show
        @carb = Carb.find(params[:id])
        @result = @carb.results.to_a
      end

      def new 
        @carb = Carb.new
      end

    
      def create
        @carb = Carb.create(carb_params)
        redirect_to carb_path(@carb.id)
      end
    
      def update
       @carb = Carb.find(params[:id])
       @carb.update(carb_params)
       redirect_to carb_path(@carb)
      end
    
      def edit
        @carb = Carb.find(params[:id])
      end
    
      def destroy
        @carb = Carb.find(params[:id])
        @carb.destroy
        redirect_to carb_path

      end

      private

      def carb_params
        params.require(:carb).permit(:name, :whole_grain, :cal_per_gram)
      end
end
