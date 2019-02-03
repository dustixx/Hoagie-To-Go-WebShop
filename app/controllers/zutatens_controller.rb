class ZutatensController < ApplicationController
  before_action :set_zutaten, only: [:show, :edit, :update, :destroy]

        before_action :authenticate_user!, except: [:index, :show]

  # GET /zutatens
  # GET /zutatens.json
  def index 
    @zutatens = Zutaten.all.order("created_at desc")
  end

  # GET /zutatens/1
  # GET /zutatens/1.json
  def show
  end

  # GET /zutatens/new
  def new
    @zutaten = Zutaten.new
  end

  # GET /zutatens/1/edit
  def edit
  end

  # POST /zutatens
  # POST /zutatens.json
  def create
    @zutaten = Zutaten.new(zutaten_params)

    respond_to do |format|
      if @zutaten.save
        format.html { redirect_to @zutaten, notice: 'Zutaten was successfully created.' }
        format.json { render :show, status: :created, location: @zutaten }
      else
        format.html { render :new }
        format.json { render json: @zutaten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zutatens/1
  # PATCH/PUT /zutatens/1.json
  def update
    respond_to do |format|
      if @zutaten.update(zutaten_params)
        format.html { redirect_to @zutaten, notice: 'Zutaten was successfully updated.' }
        format.json { render :show, status: :ok, location: @zutaten }
      else
        format.html { render :edit }
        format.json { render json: @zutaten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zutatens/1
  # DELETE /zutatens/1.json
  def destroy
    @zutaten.destroy
    respond_to do |format|
      format.html { redirect_to zutatens_url, notice: 'Zutaten was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zutaten
      @zutaten = Zutaten.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zutaten_params
      params.require(:zutaten).permit(:name, :preis,:image)
    end
end
