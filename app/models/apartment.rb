class Apartment < ActiveRecord::Base
	def index
    @apartments = Apartment.all 
    
    end

    def create
       @apartment = Apartment.new(apartment_params)
        
       if apartment.save
          redirect_to new 
       else
          flash[:error] = "Problem!"
           redirect_to new
       end
   end

   def new
    @ = apartment.new
   end

  def show
    @apartment = apartment.find(params[:id])
   
  end


  def edit
    
  end

  def destroy
    
  end

  private

  def apartment_params
           params.require(:apartment).permit(:avatar, :price, :description)
    end
end
