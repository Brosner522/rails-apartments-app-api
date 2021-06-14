class ApartmentsController < ApplicationController
    
    # get ALL apartments
    def index
        apartments = Apartment.all
        render json: apartments 
    end

    # get single apartment
    def show
        apartment = Apartment.find(params[:id])
        render json: apartment
    end

    # create an apartment 
    def create
        apartment = Apartment.create(apartment_params)
        render json: apartment, status: :created
    end

    # update an apartment 
    def update 
        apartment = Apartment.find_by(id: params[:id])
        apartment.update(apartment_params)
        render json: apartment 
    end
    
    # delete an apartment 
    def destroy
        apartment = Apartment.find_by(id: params[:id])
        if apartment
            apartment.destroy 
            render json: {} 
        end
    end

    
    private

    # help creating an apartment 
    def apartment_params
        params.permit(:number)
    end

end
