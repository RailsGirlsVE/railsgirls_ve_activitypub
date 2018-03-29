module ApplicationHelper
  def site_hostname
    Rails.configuration.x.local_domain
  end  
end
