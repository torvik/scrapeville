class NewsvillesController < ApplicationController
  before_action :set_newsville, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /newsvilles
  # GET /newsvilles.json
  def index
    @newsvilles = Newsville.paginate(page: params[:page], per_page: 20).order("created_at DESC")
  end

  # GET /newsvilles/1
  # GET /newsvilles/1.json
  def show
  end

  # GET /newsvilles/new
  def new
    @newsville = Newsville.new
  end

  # GET /newsvilles/1/edit
  def edit
     authorize! :update, @newsville
  end

  # POST /newsvilles
  # POST /newsvilles.json
  def create
    @newsville = Newsville.new(newsville_params)

    respond_to do |format|
      if @newsville.save
        format.html { redirect_to @newsville, notice: 'Newsville was successfully created.' }
        format.json { render :show, status: :created, location: @newsville }
      else
        format.html { render :new }
        format.json { render json: @newsville.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newsvilles/1
  # PATCH/PUT /newsvilles/1.json
  def update
    authorize! :update, @newsville

    respond_to do |format|
      if @newsville.update(newsville_params)
        format.html { redirect_to @newsville, notice: 'Newsville was successfully updated.' }
        format.json { render :show, status: :ok, location: @newsville }
      else
        format.html { render :edit }
        format.json { render json: @newsville.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newsvilles/1
  # DELETE /newsvilles/1.json
  def destroy
    authorize! :destroy, @newsville
    @newsville.destroy
    respond_to do |format|
      format.html { redirect_to newsvilles_url, notice: 'Newsville was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newsville
      @newsville = Newsville.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newsville_params
      params.require(:newsville).permit(:title_url, :title, :body, :time, :image_url)
    end
end
