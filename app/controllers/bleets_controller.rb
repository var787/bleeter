class BleetsController < ApplicationController
  before_action :set_bleet, only: %i[ show edit update destroy ]

  # GET /bleets or /bleets.json
  def index
    @bleets = Bleet.all.order("created_at DESC")
    @bleet = Bleet.new
  end

  # GET /bleets/1 or /bleets/1.json
  def show
  end

  # GET /bleets/new
  def new
    @bleet = Bleet.new
  end

  # GET /bleets/1/edit
  def edit
  end

  # POST /bleets or /bleets.json
  def create
    @bleet = Bleet.new(bleet_params)

    respond_to do |format|
      if @bleet.save
        format.html { redirect_to root_path, notice: "Bleet was successfully created." }
        format.json { render :show, status: :created, location: @bleet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bleet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bleets/1 or /bleets/1.json
  def update
    respond_to do |format|
      if @bleet.update(bleet_params)
        format.html { redirect_to @bleet, notice: "Bleet was successfully updated." }
        format.json { render :show, status: :ok, location: @bleet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bleet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bleets/1 or /bleets/1.json
  def destroy
    @bleet.destroy
    respond_to do |format|
      format.html { redirect_to bleets_url, notice: "Bleet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bleet
      @bleet = Bleet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bleet_params
      params.require(:bleet).permit(:bleet)
    end
end
