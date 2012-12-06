class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_tenant
    Tenant.find_by_subdomain! request.subdomain
  end

  helper_method :current_tenant

end
