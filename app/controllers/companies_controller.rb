class CompaniesController < ApplicationController
  def show
    @company = Company.find_by(id: params[:id])
    render template: "companies/show"
  end

  def index
    @companies = Company.all
    render template: "companies/index"
  end

  def create
    @company = Company.new(
      name: params[:name],
      logo: params[:logo],
      description: params[:description],
      company_id: params[:id],
    )

    @company.save
    redirect_to template: "/companies"
  end

  def destroy
    @company = Company.find_by(company_id: params["id"])
    @company.destroy
    render json: { message: "company deleted" }
  end

  def update
    @company = Company.find_by(id: params[:id])
    @company.name = params[:name] || @company.name
    @company.logo = params[:logo] || @company.logo
    @company.description = params[:description] || @company.description
    @company.save
    render template: "companies/new"
  end
end
