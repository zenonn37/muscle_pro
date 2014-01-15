class TclassesController < ApplicationController
  before_action :set_tclass, only: [:show, :edit, :update, :destroy]

  # GET /tclasses
  # GET /tclasses.json
  def index
    @tclasses = Tclass.all
  end

  # GET /tclasses/1
  # GET /tclasses/1.json
  def show
  end

  # GET /tclasses/new
  def new
    @tclass = Tclass.new
  end

  # GET /tclasses/1/edit
  def edit
  end

  # POST /tclasses
  # POST /tclasses.json
  def create
    @tclass = Tclass.new(tclass_params)

    respond_to do |format|
      if @tclass.save
        format.html { redirect_to @tclass, notice: 'Tclass was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tclass }
      else
        format.html { render action: 'new' }
        format.json { render json: @tclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tclasses/1
  # PATCH/PUT /tclasses/1.json
  def update
    respond_to do |format|
      if @tclass.update(tclass_params)
        format.html { redirect_to @tclass, notice: 'Tclass was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tclasses/1
  # DELETE /tclasses/1.json
  def destroy
    @tclass.destroy
    respond_to do |format|
      format.html { redirect_to tclasses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tclass
      @tclass = Tclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tclass_params
      params.require(:tclass).permit(:name, :level, :duration, :mclass, :dclass, :timeclass,:trainer_id)
    end
end
