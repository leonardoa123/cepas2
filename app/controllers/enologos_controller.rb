class EnologosController < ApplicationController
  before_action :set_enologo, only: %i[ show edit update destroy ]

  # GET /enologos or /enologos.json
  def index
    @enologos = Enologo.all
  end

  # GET /enologos/1 or /enologos/1.json
  def show
  end

  # GET /enologos/new
  def new
    @enologo = Enologo.new
    @cargos = Cargo.all
    @revistas = Revista.all
    @enologo.trabajos.build
  end

  # GET /enologos/1/edit
  def edit
    @pos = 0
    if @enologo.trabajos.count == 0
      @cargos = Cargo.all
      @revistas = Revista.all
      @enologo.trabajos.build
    end
  end

  # POST /enologos or /enologos.json
  def create
    @enologo = Enologo.new(enologo_params)

    respond_to do |format|
      if @enologo.save
        format.html { redirect_to enologo_url(@enologo), notice: "Enologo was successfully created." }
        format.json { render :show, status: :created, location: @enologo }
      else
        @cargos = Cargo.all
        @revistas = Revista.all
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @enologo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enologos/1 or /enologos/1.json
  def update
    respond_to do |format|
      if @enologo.update(enologo_params)
        format.html { redirect_to enologo_url(@enologo), notice: "Enologo was successfully updated." }
        format.json { render :show, status: :ok, location: @enologo }
      else
        @cargos = Cargo.all
        @revistas = Revista.all
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @enologo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enologos/1 or /enologos/1.json
  def destroy
    @enologo.destroy

    respond_to do |format|
      format.html { redirect_to enologos_url, notice: "Enologo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enologo
      @enologo = Enologo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def enologo_params
      params.require(:enologo).permit(:nombre, :edad, :nacionalidad, trabajos_attributes: [:id, :revista_id, :cargo_id])
    end
end
