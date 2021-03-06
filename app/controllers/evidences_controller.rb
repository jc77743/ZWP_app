class EvidencesController < ApplicationController
  before_action :set_evidence, only: [:show, :edit, :update, :destroy]

  # GET /evidences
  # GET /evidences.json
  def index
    @evidences = Evidence.all
  end

  # GET /evidences/1
  # GET /evidences/1.json
  def show
    @tags = Tag.by_evidence(@evidence.id)
    @tags_not = Tag.all
  end

  # GET /evidences/new
  def new
    @evidence = Evidence.new

    # @tags = Tag.all
  end

  # GET /evidences/1/edit
  def edit
    @tags = Tag.all


  end

  # POST /evidences
  # POST /evidences.json
  def create
    @evidence = Evidence.create(evidence_params)

    respond_to do |format|
      if @evidence.save
        format.html { redirect_to @evidence, notice: 'Evidence was successfully created.' }
        format.json { render action: 'show', status: :created, location: @evidence }
      else
        format.html { render action: 'new' }
        format.json { render json: @evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evidences/1
  # PATCH/PUT /evidences/1.json
  def update
    # @tag_assignments = Tag_Assignment.all
    respond_to do |format|
      if @evidence.update(evidence_params)
        format.html { redirect_to @evidence, notice: 'Evidence was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @evidence.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evidences/1
  # DELETE /evidences/1.json
  def destroy
    @evidence.destroy
    respond_to do |format|
      format.html { redirect_to evidences_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evidence
      @evidence = Evidence.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evidence_params
      params.require(:evidence).permit(:name, :project_id, :photo, tag_assignments_attributes: [:tag_id, :evidence_id])
    end
end
