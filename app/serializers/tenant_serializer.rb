class TenantSerializer < ActiveModel::Serializer
  attributes :id, :name, :age
  
  has_many :apartments, through: :leases
  has_many :leases
end
