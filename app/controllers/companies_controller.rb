class CompaniesController < ChouetteController
  defaults :resource_class => Chouette::Company
  respond_to :html
  respond_to :xml
  respond_to :json

  # def update
  #   update! do |success, failure|
  #     failure.html { redirect_to referential_companies_path(@resource,  @referential) }
  #   end    
  # end

  protected

  def resource_url(company = nil)
    referential_company_path(referential, company || resource)
  end

  def collection_url
    referential_companies_path(referential)
  end

end