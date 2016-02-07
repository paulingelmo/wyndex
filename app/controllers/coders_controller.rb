class CodersController < ApplicationController
  before_action :set_coder, only: [:show, :edit, :update, :destroy]

  # GET /
  def home
  end

  # GET /coders
  # GET /coders.json
  def index
    @coders = Coder.all
  end

  # GET /coders/1
  # GET /coders/1.json
  def show
  end

  # GET /coders/new
  def new
    @coder = Coder.new
  end

  # GET /coders/1/edit
  def edit
  end

  # POST /coders
  # POST /coders.json
  def create
    @coder = Coder.new(coder_params)

    respond_to do |format|
      if @coder.save
        format.html { redirect_to @coder, notice: 'Coder was successfully created.' }
        format.json { render :show, status: :created, location: @coder }
      else
        format.html { render :new }
        format.json { render json: @coder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coders/1
  # PATCH/PUT /coders/1.json
  def update
    respond_to do |format|
      if @coder.update(coder_params)
        format.html { redirect_to @coder, notice: 'Coder was successfully updated.' }
        format.json { render :show, status: :ok, location: @coder }
      else
        format.html { render :edit }
        format.json { render json: @coder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coders/1
  # DELETE /coders/1.json
  def destroy
    @coder.destroy
    respond_to do |format|
      format.html { redirect_to coders_url, notice: 'Coder was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coder
      @coder = Coder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coder_params
      params.require(:coder).permit(:name, :twitter_handle, :facebook_username, :github_username)
    end
end
