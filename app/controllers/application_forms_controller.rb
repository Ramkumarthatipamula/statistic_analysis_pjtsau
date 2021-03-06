class ApplicationFormsController < ApplicationController
  before_action :set_application_form, only: [:show, :edit, :update, :destroy]

  # GET /application_forms
  # GET /application_forms.json
  def index
    if current_user.email == "admin@pjtsau.com"
      @application_forms = ApplicationForm.all
    else
      # @application_forms = current_user.application_forms
    end
    respond_to do |format|
      format.html
      format.csv { send_data @application_forms.to_csv, filename: "application_forms-#{Date.today}.csv" }
      format.xls
    end
  end

  # GET /application_forms/1
  # GET /application_forms/1.json
  def show
  end

  # GET /application_forms/new
  def new
    @application_form = ApplicationForm.new
  end

  # GET /application_forms/1/edit
  def edit
  end

  # POST /application_forms
  # POST /application_forms.json
  def create
    @application_form = ApplicationForm.new(application_form_params)
    @application_form.user_id = current_user.id
    respond_to do |format|
      if @application_form.save
        format.html { redirect_to root_path, notice: 'Application form was successfully created.' }
        format.json { render :show, status: :created, location: @application_form }
      else
        format.html { render :new }
        format.json { render json: @application_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_forms/1
  # PATCH/PUT /application_forms/1.json
  def update
    @application_form.user_id = current_user.id
    respond_to do |format|
      if @application_form.update(application_form_params)
        format.html { redirect_to root_path, notice: 'Application form was successfully updated.' }
        format.json { render :show, status: :ok, location: @application_form }
      else
        format.html { render :edit }
        format.json { render json: @application_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_forms/1
  # DELETE /application_forms/1.json
  def destroy
    @application_form.destroy
    respond_to do |format|
      format.html { redirect_to application_forms_url, notice: 'Application form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_form
      @application_form = ApplicationForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def application_form_params
      params.require(:application_form).permit(:mobile_number, :application_number, :hall_ticket_number, :rank, :name, :gender, :date_of_birth, :age, :aadhaar_number, :blood_group, :mother_name, :father_name, :mobile_number1, :mobile_number2, :email, :social_status, :religion, :nationality, :physically_challenged, :address, :state, :pincode, :place_of_study_vi_to_xii, :physically_challenged_category, :sports_category, :defence_category, :ncc_category, :farmers_quota)
    end
end
