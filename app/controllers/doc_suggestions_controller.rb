class DocSuggestionsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_doc_suggestion, only: [:show, :edit, :update, :destroy]

  # GET /doc_suggestions
  # GET /doc_suggestions.json
  def index
    @doc_suggestions = DocSuggestion.all
  end

  # GET /doc_suggestions/1
  # GET /doc_suggestions/1.json
  def show
  end

  # GET /doc_suggestions/new
  def new
    @doc_suggestion = DocSuggestion.new
  end

  # GET /doc_suggestions/1/edit
  def edit
  end

  # POST /doc_suggestions
  # POST /doc_suggestions.json
  def create
    @doc_suggestion = DocSuggestion.new(doc_suggestion_params)
    @doc_suggestion.save
  end

  # PATCH/PUT /doc_suggestions/1
  # PATCH/PUT /doc_suggestions/1.json
  def update
    respond_to do |format|
      if @doc_suggestion.update(doc_suggestion_params)
        format.html { redirect_to @doc_suggestion, notice: 'Doc suggestion was successfully updated.' }
        format.json { render :show, status: :ok, location: @doc_suggestion }
      else
        format.html { render :edit }
        format.json { render json: @doc_suggestion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doc_suggestions/1
  # DELETE /doc_suggestions/1.json
  def destroy
    @doc_suggestion.destroy
    respond_to do |format|
      format.html { redirect_to doc_suggestions_url, notice: 'Doc suggestion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doc_suggestion
      @doc_suggestion = DocSuggestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doc_suggestion_params
      params.permit(:url, :title, :keywords, :email_pgp)
    end
end
