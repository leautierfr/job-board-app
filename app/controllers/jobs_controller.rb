class JobsController < ApplicationController
  def index
    @jobs = Job.all
    render template: "jobs/index"
  end

  def show
    @job = Job.find_by(id: params[:id])
    render template: "jobs/show"
  end

  def new
    @job = Job.new
    render template: "jobs/new"
  end

  def create
    @job = Job.new(
      title: params[:job][:title],
      company_id: params[:job][:company_id],
      description: params[:job][:description],
      url: params[:job][:url],
      location: params[:job][:location],
      active: params[:job][:active],
      salary_range: params[:job][:salary_range],
    )
    @job.save
    redirect_to "/jobs"
  end

  def edit
    @job = Job.find_by(id: params[:id])
    render template: "jobs/edit"
  end

  def update
    @job = Job.find_by(id: params[:id])
    @job.title = params[:job][:title]
    @job.company_id = params[:job][:company_id]
    @job.description = params[:job][:description]
    @job.url = params[:job][:url]
    @job.location = params[:job][:location]
    @job.active = params[:job][:active]
    @job.salary_range = params[:job][:salary_range]
    @job.save
    redirect_to "/photos"
  end

  def destroy
    @job = Job.find_by(id: params[:id])
    @job.destroy
    redirect_to "/jobs", status: :see_other
  end
end
