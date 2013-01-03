class Product < ActiveRecord::Base
  resourcify
  attr_accessible :description, :name, :quantity

  default_scope { where(tenant_id: Tenant.current_id) if Tenant.current_id }
end
