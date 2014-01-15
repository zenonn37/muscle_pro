class StaffAccountsController < ApplicationController
  before_action :set_staff_account, only: [:show, :edit, :update, :destroy]

  # GET /staff_accounts
  # GET /staff_accounts.json
  def index
    @staff_accounts = StaffAccount.all
  end

  # GET /staff_accounts/1
  # GET /staff_accounts/1.json
  def show
  end

  # GET /staff_accounts/new
  def new
    @staff_account = StaffAccount.new
  end

  # GET /staff_accounts/1/edit
  def edit
  end

  # POST /staff_accounts
  # POST /staff_accounts.json
  def create
    @staff_account = StaffAccount.new(staff_account_params)

    respond_to do |format|
      if @staff_account.save
        format.html { redirect_to @staff_account, notice: 'Staff account was successfully created.' }
        format.json { render action: 'show', status: :created, location: @staff_account }
      else
        format.html { render action: 'new' }
        format.json { render json: @staff_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /staff_accounts/1
  # PATCH/PUT /staff_accounts/1.json
  def update
    respond_to do |format|
      if @staff_account.update(staff_account_params)
        format.html { redirect_to @staff_account, notice: 'Staff account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @staff_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /staff_accounts/1
  # DELETE /staff_accounts/1.json
  def destroy
    @staff_account.destroy
    respond_to do |format|
      format.html { redirect_to staff_accounts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff_account
      @staff_account = StaffAccount.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_account_params
      params.require(:staff_account).permit(:staffid, :trainer_id, :location, :hours, :salary, :production)
    end
end
