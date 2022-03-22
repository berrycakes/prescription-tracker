class PrescribedMedicinesController < ApplicationController
  before_action :set_prescription, only: %i[ show edit update destroy ]
  before_action :set_prescribed_medicine, only: %i[ show edit update destroy ]
  

  # GET /prescribed_medicines or /prescribed_medicines.json
  def index
    @prescription = Prescription.find(params[:prescription_id])
    @prescribed_medicines = PrescribedMedicine.all
  end

  # GET /prescribed_medicines/1 or /prescribed_medicines/1.json
  def show
  end

  # GET /prescribed_medicines/new
  def new
    @prescription = Prescription.find(params[:prescription_id])
    @prescribed_medicine = PrescribedMedicine.new
  end

  # GET /prescribed_medicines/1/edit
  def edit
  end

  # POST /prescribed_medicines or /prescribed_medicines.json
  def create
    @prescribed_medicine = PrescribedMedicine.new(prescribed_medicine_params)

    respond_to do |format|
      if @prescribed_medicine.save
        format.html { redirect_to prescribed_medicine_url(@prescribed_medicine), notice: "Prescribed medicine was successfully created." }
        format.json { render :show, status: :created, location: @prescribed_medicine }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prescribed_medicine.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescribed_medicines/1 or /prescribed_medicines/1.json
  def update
    respond_to do |format|
      if @prescribed_medicine.update(prescribed_medicine_params)
        format.html { redirect_to prescribed_medicine_url(@prescribed_medicine), notice: "Prescribed medicine was successfully updated." }
        format.json { render :show, status: :ok, location: @prescribed_medicine }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prescribed_medicine.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescribed_medicines/1 or /prescribed_medicines/1.json
  def destroy
    @prescribed_medicine.destroy

    respond_to do |format|
      format.html { redirect_to prescribed_medicines_url, notice: "Prescribed medicine was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescribed_medicine
      @prescribed_medicine = PrescribedMedicine.find(params[:id])
    end

    def set_prescription
      @prescription = Prescription.find(params[:prescription_id])
    end

    # Only allow a list of trusted parameters through.
    def prescribed_medicine_params
      params.require(:prescribed_medicine).permit(:brand_name, :generic_name, :quantity, :medicine_id)
    end
end
