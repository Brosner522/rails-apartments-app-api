class LeaseSerializer < ActiveModel::Serializer
  attributes :id, :apartment_id, :tenant_id, :rent 

  has_one :tenant 
  has_one :apartment
end
