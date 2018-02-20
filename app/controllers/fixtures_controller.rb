class FixturesController < ApplicationController
  before_action :set_fixture, only: [:show, :edit, :update, :destroy]

  # GET /fixtures
  # GET /fixtures.json
  def index
    @fixtures = 
    Team.select(
  [
    Fixture.arel_table[:id], Fixture.arel_table[:team1], Tema.arel_table[:flag], Fixture.arel_table[:team2], Team.arel_table[:flag], Fixture.arel_table[:date_game], Fixture.arel_table[:gol1], Fixture.arel_table[:gol2]
  ]
).where(
  Team.arel_table[:team1].eq(Team.arel_table[:id]).and(Team.arel_table[:team2].eq(Team.arel_table[:id]))
)
  end

  # GET /fixtures/1
  # GET /fixtures/1.json
  def show
  end

  # GET /fixtures/new
  def new
    @fixture = Fixture.new
  end

  # GET /fixtures/1/edit
  def edit
  end

  # POST /fixtures
  # POST /fixtures.json
  def create
    @fixture = Fixture.new(fixture_params)

    respond_to do |format|
      if @fixture.save
        format.html { redirect_to @fixture, notice: 'Fixture was successfully created.' }
        format.json { render :show, status: :created, location: @fixture }
      else
        format.html { render :new }
        format.json { render json: @fixture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fixtures/1
  # PATCH/PUT /fixtures/1.json
  def update
    respond_to do |format|
      if @fixture.update(fixture_params)
        format.html { redirect_to @fixture, notice: 'Fixture was successfully updated.' }
        format.json { render :show, status: :ok, location: @fixture }
      else
        format.html { render :edit }
        format.json { render json: @fixture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixtures/1
  # DELETE /fixtures/1.json
  def destroy
    @fixture.destroy
    respond_to do |format|
      format.html { redirect_to fixtures_url, notice: 'Fixture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixture
      @fixture = Fixture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fixture_params
      params.require(:fixture).permit(:team1, :team2, :date_game, :gol1, :gol2)
    end
end
