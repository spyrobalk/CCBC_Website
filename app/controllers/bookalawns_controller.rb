class BookalawnsController < InheritedResources::Base
   before_action :require_login
   before_action :set_bookalawn, only: [:show, :edit, :update, :destroy]

  # GET /bookalawns
  # GET /bookalawns.json
  def index
    @title = "Book a Lawn"
    @bookalawns = Bookalawn.all
    
     @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = Bookalawn.event_strips_for_month(@shown_month)
    
  end

  # GET /bookalawns/1
  # GET /bookalawns/1.json
  def show
  end

  # GET /bookalawns/new
  def new
    @bookalawn = Bookalawn.new
  end

  # GET /bookalawns/1/edit
  def edit
  end

  # POST /bookalawns
  # POST /bookalawns.json
  def create
    @bookalawn = Bookalawn.new(bookalawn_params)

    respond_to do |format|
      if @bookalawn.save
        format.html { redirect_to @bookalawn, notice: 'Booking was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bookalawn }
      else
        format.html { render action: 'new' }
        format.json { render json: @bookalawn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookalawns/1
  # PATCH/PUT /bookalawns/1.json
  def update
    respond_to do |format|
      if @bookalawn.update(bookalawn_params)
        format.html { redirect_to @bookalawn, notice: 'Booking was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bookalawn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookalawns/1
  # DELETE /bookalawns/1.json
  def destroy
    @bookalawn.destroy
    respond_to do |format|
      format.html { redirect_to bookalawns_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookalawn
      @bookalawn = Bookalawn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bookalawn_params
      params.require(:bookalawn).permit(:lawn, :start_at, :end_at)
    end
end
