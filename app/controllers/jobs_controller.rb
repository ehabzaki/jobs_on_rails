class JobsController < ApplicationController

	def index
	
    	@job=Job.all

	end
	

	def show

	end
	

	def new
		@job=Job.new
	end
	
    def create
    	@job=Job.new(jobs_params)
    	if @job.save
    		redirect_to @job
    	else
    		render "New"
    	end
	end
	
	def update
	end
	
	def edit
	end

	def destroy
	end
	
	private

	def jobs_params
    params.require(:job).permit(:title,:description,:company,:url)
	end

	def find_jobs
		@job-job.find(params[:id])
	end
end
