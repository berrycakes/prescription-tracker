class PrescriptionNotesController < ApplicationController
  before_action :set_prescription_note, only: %i[ show edit update destroy ]

  # GET /prescription_notes or /prescription_notes.json
  def index
    @prescription_notes = PrescriptionNote.all
  end

  # GET /prescription_notes/1 or /prescription_notes/1.json
  def show
  end

  # GET /prescription_notes/new
  def new
    @prescription_note = PrescriptionNote.new
  end

  # GET /prescription_notes/1/edit
  def edit
  end

  # POST /prescription_notes or /prescription_notes.json
  def create
    @prescription_note = PrescriptionNote.new(prescription_note_params)

    respond_to do |format|
      if @prescription_note.save
        format.html { redirect_to prescription_note_url(@prescription_note), notice: "Prescription note was successfully created." }
        format.json { render :show, status: :created, location: @prescription_note }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prescription_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prescription_notes/1 or /prescription_notes/1.json
  def update
    respond_to do |format|
      if @prescription_note.update(prescription_note_params)
        format.html { redirect_to prescription_note_url(@prescription_note), notice: "Prescription note was successfully updated." }
        format.json { render :show, status: :ok, location: @prescription_note }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prescription_note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prescription_notes/1 or /prescription_notes/1.json
  def destroy
    @prescription_note.destroy

    respond_to do |format|
      format.html { redirect_to prescription_notes_url, notice: "Prescription note was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prescription_note
      @prescription_note = PrescriptionNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prescription_note_params
      params.require(:prescription_note).permit(:content, :prescription_id)
    end
end
