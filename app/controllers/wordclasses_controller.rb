class WordclassesController < ApplicationController
  before_action :set_wordclass, only: [:show, :edit, :update, :destroy]

  # GET /wordclasses
  # GET /wordclasses.json
  def index
    @wordclasses = Wordclass.all
  end

  # GET /wordclasses/1
  # GET /wordclasses/1.json
  def show
  end

  # GET /wordclasses/new
  def new
    @wordclass = Wordclass.new
  end

  # GET /wordclasses/1/edit
  def edit
  end

  # POST /wordclasses
  # POST /wordclasses.json
  def create
    @wordclass = Wordclass.new(wordclass_params)

    respond_to do |format|
      if @wordclass.save
        format.html { redirect_to @wordclass, notice: 'Wordclass was successfully created.' }
        format.json { render :show, status: :created, location: @wordclass }
      else
        format.html { render :new }
        format.json { render json: @wordclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wordclasses/1
  # PATCH/PUT /wordclasses/1.json
  def update
    respond_to do |format|
      if @wordclass.update(wordclass_params)
        format.html { redirect_to @wordclass, notice: 'Wordclass was successfully updated.' }
        format.json { render :show, status: :ok, location: @wordclass }
      else
        format.html { render :edit }
        format.json { render json: @wordclass.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wordclasses/1
  # DELETE /wordclasses/1.json
  def destroy
    @wordclass.destroy
    respond_to do |format|
      format.html { redirect_to wordclasses_url, notice: 'Wordclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wordclass
      @wordclass = Wordclass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wordclass_params
      params.require(:wordclass).permit(:name)
    end
end
