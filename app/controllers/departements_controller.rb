class DepartementsController < ApplicationController
  before_action :set_departement, only: [:show, :edit, :update, :destroy]

  # GET /departements
  # GET /departements.json
  def index
    @departements = Departement.all
  end

  # GET /departements/1
  # GET /departements/1.json
  def show
  end

  # GET /departements/new
  def new
    @departement = Departement.new
  end

  # GET /departements/1/edit
  def edit
  end

  # POST /departements
  # POST /departements.json
  def create
    @departement = Departement.new(departement_params)

    respond_to do |format|
      if @departement.save
        format.html { redirect_to @departement, notice: 'Departement was successfully created.' }
        format.json { render :show, status: :created, location: @departement }
      else
        format.html { render :new }
        format.json { render json: @departement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /departements/1
  # PATCH/PUT /departements/1.json
  def update
    respond_to do |format|
      if @departement.update(departement_params)
        format.html { redirect_to @departement, notice: 'Departement was successfully updated.' }
        format.json { render :show, status: :ok, location: @departement }
      else
        format.html { render :edit }
        format.json { render json: @departement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /departements/1
  # DELETE /departements/1.json
  def destroy
    @departement.destroy
    respond_to do |format|
      format.html { redirect_to departements_url, notice: 'Departement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_departement
      @departement = Departement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def departement_params
      params.require(:departement).permit(:name, :region_id)
    end
end