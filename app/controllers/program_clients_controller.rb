class ProgramClientsController < ApplicationController
  before_action :set_program, only: [:show, :edit, :update, :destroy]

  # GET /programs
  # GET /programs.json
  def index
    @programs = Program.all
  end

  # GET /programs/1
  # GET /programs/1.json
  def show
    @lots = Lot.where(program_id: @program.id).order("created_at DESC")
  end

  # GET /programs/new
  def new
    @program = Program.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_program
      @program = Program.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def program_params
      params.fetch(:program, {})
    end
end
