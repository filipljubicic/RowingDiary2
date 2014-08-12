class ErgoSessionsController < ApplicationController
  before_action :set_ergo_session, only: [:show, :edit, :update, :destroy]

  # GET /ergo_sessions
  # GET /ergo_sessions.json
  def index
    @ergo_sessions = ErgoSession.all
  end

  # GET /ergo_sessions/1
  # GET /ergo_sessions/1.json
  def show
  end

  # GET /ergo_sessions/new
  def new
    @ergo_session = ErgoSession.new
  end

  # GET /ergo_sessions/1/edit
  def edit
  end

  # POST /ergo_sessions
  # POST /ergo_sessions.json
  def create
    @ergo_session = ErgoSession.new(ergo_session_params)

    respond_to do |format|
      if @ergo_session.save
        format.html { redirect_to @ergo_session, notice: 'Ergo session was successfully created.' }
        format.json { render :show, status: :created, location: @ergo_session }
      else
        format.html { render :new }
        format.json { render json: @ergo_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ergo_sessions/1
  # PATCH/PUT /ergo_sessions/1.json
  def update
    respond_to do |format|
      if @ergo_session.update(ergo_session_params)
        format.html { redirect_to @ergo_session, notice: 'Ergo session was successfully updated.' }
        format.json { render :show, status: :ok, location: @ergo_session }
      else
        format.html { render :edit }
        format.json { render json: @ergo_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ergo_sessions/1
  # DELETE /ergo_sessions/1.json
  def destroy
    @ergo_session.destroy
    respond_to do |format|
      format.html { redirect_to ergo_sessions_url, notice: 'Ergo session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ergo_session
      @ergo_session = ErgoSession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ergo_session_params
      params.require(:ergo_session).permit(:description, :split, :time, :rate, :distance, :hr, :notes)
    end
end
