class LeasesController < ApplicationController

    # get all leases
    # def index 
    #     leases = Lease.all
    #     render json: leases
    # end

    # create a lease
    def create
        lease = Lease.create!(lease_params)
        render json: lease, status: :created 
    end

    # delete a lease
    def destroy
        lease = Lease.find(params[:id])
        if lease
            lease.destroy 
            render json: {}
        end
    end


    private

    def lease_params
        params.permit(:apartment_id, :tenant_id, :rent)
    end

end
