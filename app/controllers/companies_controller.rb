class CompaniesController < ApplicationController
  def show
    @company = Company.find_by(params: id)
    render :show
  end

  def index
    @company = Company.all
    render json: @company.as_json
  end

  def create
    @company = Company.new(
      name: params[:name],
      logo: params[:logo],
      description: params[:description],
      company_id: params[:id],
    )

    @company.save
    render json: @company.as_json
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
    render json: product.as_json
  end
end
