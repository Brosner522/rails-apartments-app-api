class TenantsController < ApplicationController

    # get ALL tenants
    def index 
        tenants = Tenant.all
        render json: tenants 
    end

    # get a tenant
    def show
        tenant = Tenant.find(params[:id])
        render json: tenant
    end

    # create a tenant
    def create 
        tenant = Tenant.create!(tenant_params)
        render json: tenant 
    end

    # update a tenant
    def update
        tenant = Tenant.find(params[:id])
        tenant.update(tenant_params)
        render json: tenant
    end
    
    
    # delete a tenant
    def destroy
        tenant = Tenant.find_by(id: params[:id])
        if tenant
            tenant.destroy
            render json: {}
        end
    end

    private

    def tenant_params
        params.permit(:name, :age)
    end


end
