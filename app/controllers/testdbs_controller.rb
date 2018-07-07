class TestdbsController < ApplicationController
  before_action :set_testdb, only: [:show, :edit, :update, :destroy]

  # GET /testdbs
  # GET /testdbs.json
  def index
    @testdbs = Testdb.all
  end

  # GET /testdbs/1
  # GET /testdbs/1.json
  def show
  end

  # GET /testdbs/new
  def new
    @testdb = Testdb.new
  end

  # GET /testdbs/1/edit
  def edit
  end

  # POST /testdbs
  # POST /testdbs.json
  def create
    @testdb = Testdb.new(testdb_params)

    respond_to do |format|
      if @testdb.save
        format.html { redirect_to @testdb, notice: 'Testdb was successfully created.' }
        format.json { render :show, status: :created, location: @testdb }
      else
        format.html { render :new }
        format.json { render json: @testdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testdbs/1
  # PATCH/PUT /testdbs/1.json
  def update
    respond_to do |format|
      if @testdb.update(testdb_params)
        format.html { redirect_to @testdb, notice: 'Testdb was successfully updated.' }
        format.json { render :show, status: :ok, location: @testdb }
      else
        format.html { render :edit }
        format.json { render json: @testdb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testdbs/1
  # DELETE /testdbs/1.json
  def destroy
    @testdb.destroy
    respond_to do |format|
      format.html { redirect_to testdbs_url, notice: 'Testdb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testdb
      @testdb = Testdb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testdb_params
      params.require(:testdb).permit(:name, :text, :yes)
    end
end
