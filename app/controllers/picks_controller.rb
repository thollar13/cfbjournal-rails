class PicksController < ApplicationController
  before_action :set_pick, only: [:show, :edit, :update, :destroy]

  # GET /picks
  # GET /picks.json
  def index
    @picks = Pick.all
    @teams = Team.all
    @new_pick = Pick.new
  end

  # GET /picks/1
  # GET /picks/1.json
  def show
    @teams = Team.all
  end

  # GET /picks/new
  def new
    has_picked = Pick.where(:user_id => current_user).first
    if has_picked
      redirect_to pick_path(current_user)
    else
      @pick = Pick.new
    end
    
  end

  # GET /picks/1/edit
  def edit
  end

  # POST /picks
  # POST /picks.json
  def create
    @pick = Pick.new(pick_params)

    respond_to do |format|
      if @pick.save
        format.html { redirect_to payments_path, notice: 'Pick was successfully created.' }
        format.json { render :show, status: :created, location: @pick }
      else
        format.html { render :new }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picks/1
  # PATCH/PUT /picks/1.json
  def update
    respond_to do |format|
      if @pick.update(pick_params)
        format.html { redirect_to edit_pick_path(@pick), notice: 'Your picks were successfully updated.' }
        format.json { render :show, status: :ok, location: @pick }
      else
        format.html { render :edit }
        format.json { render json: @pick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picks/1
  # DELETE /picks/1.json
  def destroy
    @pick.destroy
    respond_to do |format|
      format.html { redirect_to picks_url, notice: 'Pick was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_acc_champ
    pick = Pick.new(pick_params)
    pick.save

    redirect_to picks_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pick
      @pick = Pick.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pick_params
      params.require(:pick).permit(:acc_atlantic, :acc_coastal, :acc_champ, :big_ten_east, :big_ten_west, :big_ten_champ, :big_twelve_champ, :pac_twelve_north, :pac_twelve_south, :pac_twelve_champ, :sec_east, :sec_west, :sec_champ, :nation_runner_up, :national_champ, :championship_total_points, :user_id)
    end
end
