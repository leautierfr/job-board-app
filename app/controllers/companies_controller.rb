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
end
