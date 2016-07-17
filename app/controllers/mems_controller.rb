class MemsController < ApplicationController
  before_action :set_mem, only: [:show, :edit, :update, :destroy]

  # GET /mems
  # GET /mems.json
  def index
    @mems = Mem.all
  end

  # GET /mems/1
  # GET /mems/1.json
  def show
  end

  # GET /mems/new
  def new
    @mem = Mem.new
  end

  # GET /mems/1/edit
  def edit
  end

  # POST /mems
  # POST /mems.json
  def create
    @mem = Mem.new(mem_params)

    respond_to do |format|
      if @mem.save
        format.html { redirect_to @mem, notice: 'Mem was successfully created.' }
        format.json { render :show, status: :created, location: @mem }
      else
        format.html { render :new }
        format.json { render json: @mem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mems/1
  # PATCH/PUT /mems/1.json
  def update
    respond_to do |format|
      if @mem.update(mem_params)
        format.html { redirect_to @mem, notice: 'Mem was successfully updated.' }
        format.json { render :show, status: :ok, location: @mem }
      else
        format.html { render :edit }
        format.json { render json: @mem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mems/1
  # DELETE /mems/1.json
  def destroy
    @mem.destroy
    respond_to do |format|
      format.html { redirect_to mems_url, notice: 'Mem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mem
      @mem = Mem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mem_params
      params.require(:mem).permit(:name, :description, :user_id)
    end
end
