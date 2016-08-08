class ContributesController < ApplicationController
  before_action :set_contribute, only: [:show, :edit, :update, :destroy]

  # GET /contributes
  # GET /contributes.json
  def index
    @contributes = Contribute.all
  end

  # GET /contributes/1
  # GET /contributes/1.json
  def show
  end

  # GET /contributes/new
  def new
    @contribute = Contribute.new
  end

  # GET /contributes/1/edit
  def edit
  end

  # POST /contributes
  # POST /contributes.json
  def create
    @contribute = Contribute.new(contribute_params)

    respond_to do |format|
      if @contribute.save
        format.html { redirect_to @contribute, notice: 'Contribute was successfully created.' }
        format.json { render :show, status: :created, location: @contribute }
      else
        format.html { render :new }
        format.json { render json: @contribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contributes/1
  # PATCH/PUT /contributes/1.json
  def update
    respond_to do |format|
      if @contribute.update(contribute_params)
        format.html { redirect_to @contribute, notice: 'Contribute was successfully updated.' }
        format.json { render :show, status: :ok, location: @contribute }
      else
        format.html { render :edit }
        format.json { render json: @contribute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contributes/1
  # DELETE /contributes/1.json
  def destroy
    @contribute.destroy
    respond_to do |format|
      format.html { redirect_to contributes_url, notice: 'Contribute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contribute
      @contribute = Contribute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contribute_params
      params.require(:contribute).permit(:user_id, :event_id, :quota, :snack, :fine_id, :debt)
    end
end
