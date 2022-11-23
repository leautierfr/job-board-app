class JobsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    @jobs = Job.all.where(active: "Open")
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
      active: "Open",
      salary_range: params[:job][:salary_range],
      tags: params[:job][:tags]
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
    @job.tags = params[:job][:tags]
  
    @job.save
    redirect_to "/jobs"
  end

  def destroy
    job = Job.find_by(id: params[:id])
    job.active = "Closed"
    job.save
    
    redirect_to "/jobs", status: :see_other
  end
end
