class ProteinsController < ApplicationController

    def index
        @proteins = Protein.all
      end
    
      def show
        @protein = Protein.find(params[:id])
        @result = @protein.results.to_a
      end
    
      def create
        @protein= Protein.create(protein_params)
        redirect_to protein_path(@protein.id)
      end

      def new
          @protein = Protein.new
      end
    
      def update
       @protein= Protein.find(params[:id])
       @protein.update(protein_params)
       redirect_to protein_path(@protein)
      end
    
      def edit
        @protein = Protein.find(params[:id])
      end
    
      def destroy
        @protein = Protein.find(params[:id])
        @protein.destroy
        redirect_to protein_path

      end

      private

      def protein_params
        params.require(:protein).permit(:name, :vegetarian, :cal_per_gram)
      end
end
