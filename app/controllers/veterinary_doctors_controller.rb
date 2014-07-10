class VeterinaryDoctorsController < ApplicationController
  before_action :set_veterinary_doctor, only: [:show, :edit, :update, :destroy]

  # GET /veterinary_doctors
  # GET /veterinary_doctors.json
  def index
    @veterinary_doctors = VeterinaryDoctor.all
  end

  # GET /veterinary_doctors/1
  # GET /veterinary_doctors/1.json
  def show
  end

  # GET /veterinary_doctors/new
  def new
    @veterinary_doctor = VeterinaryDoctor.new
  end

  # GET /veterinary_doctors/1/edit
  def edit
  end

  # POST /veterinary_doctors
  # POST /veterinary_doctors.json
  def create
    @veterinary_doctor = VeterinaryDoctor.new(veterinary_doctor_params)

    respond_to do |format|
      if @veterinary_doctor.save
        format.html { redirect_to @veterinary_doctor, notice: 'Veterinary doctor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @veterinary_doctor }
      else
        format.html { render action: 'new' }
        format.json { render json: @veterinary_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /veterinary_doctors/1
  # PATCH/PUT /veterinary_doctors/1.json
  def update
    respond_to do |format|
      if @veterinary_doctor.update(veterinary_doctor_params)
        format.html { redirect_to @veterinary_doctor, notice: 'Veterinary doctor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @veterinary_doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /veterinary_doctors/1
  # DELETE /veterinary_doctors/1.json
  def destroy
    @veterinary_doctor.destroy
    respond_to do |format|
      format.html { redirect_to veterinary_doctors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_veterinary_doctor
      @veterinary_doctor = VeterinaryDoctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def veterinary_doctor_params
      params.require(:veterinary_doctor).permit(:name, :address_line1, :address_line2, :city, :state, :zip, :school_name, :years_in_practice)
    end
end
