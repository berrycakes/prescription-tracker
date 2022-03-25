class PrescriptionsController < ApplicationController
  before_action :set_prescription, only: %i[ show edit update destroy ]

  # GET /prescriptions or /prescriptions.json
  def index
    @prescriptions = Prescription.all
  end

  # GET /prescriptions/1 or /prescriptions/1.json
  def show
    @prescribed_medicines = @prescription.prescribed_medicines
  end

  # GET /prescriptions/new
  def new
    @prescription = Prescription.new
    @prescription.prescribed_medicines.build
  end

  # GET /prescriptions/1/edit
  def edit
    if @prescription.prescribed_medicines.count == 0
      @prescription.prescribed_medicines.build
    end
  end
  def add_row
    @prescription.prescribed_medicines.build
  end

  # POST /prescriptions or /prescriptions.json
  def create
    @prescription = Prescription.new(prescription_params)

    respond_to do |format|
      if @prescription.save
        format.html { redirect_to prescription_url(@prescription), notice: "Prescription was successfully created." }
        format.json { render :show, status: :created, location: @prescription }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescriptions/1 or /prescriptions/1.json
  def update
    respond_to do |format|
      if @prescription.update(prescription_params)
        format.html { redirect_to prescription_url(@prescription), notice: "Prescription was successfully updated." }
        format.json { render :show, status: :ok, location: @prescription }
        format.js
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prescription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescriptions/1 or /prescriptions/1.json
  def destroy
    @prescription.destroy

    respond_to do |format|
      format.html { redirect_to prescriptions_url, notice: "Prescription was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription
      @prescription = Prescription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prescription_params
      params.require(:prescription).permit(:date_prescribed, :doctor_id, prescribed_medicines_attributes:[:id, :quantity, :medicine_id, :note, :_destroy])
    end
end
