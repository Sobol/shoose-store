class Admin::CompaniesController < Admin::AdminController

  def index
    @companies = Company.paginate(:page => params[:page], :per_page => 10)
  end

  def new
    @company = Company.new
  end

  def edit
    @company = Company.find(params[:id])
  end

 def create
    @company = Company.new(params[:company])
    if @company.save!
      redirect_to admin_companies_path
    else
      render :new
    end
  end

 def update
    @company = Company.find(params[:id])
    if @company.update_attributes(params[:company])
      redirect_to admin_companies_path
    end
 end
end
