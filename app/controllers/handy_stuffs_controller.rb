class HandyStuffsController < ApplicationController
  before_action :set_handy_stuff, only: [:show, :edit, :update, :destroy]
  access all: [:index, :europe, :usa], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all


  # GET /handystuffs
  # GET /handystuffs.json
  SUPPORTED_HANDY_STUFF_TYPES = ["usa", "europe"].freeze

  def index
    @handy_stuffs = HandyStuff.send(handy_stuff_type.to_sym)
  end


  def handy_stuff_type
    if SUPPORTED_HANDY_STUFF_TYPES.include? params[:handy_stuff_type]
      params[:handy_stuff_type]
    else
      'all'
    end
  end
  # GET /handy_stuffs/1
  def show
  end

  # GET /handy_stuffs/new
  def new
    @handy_stuff = HandyStuff.new
  end

  # GET /handy_stuffs/1/edit
  def edit
  end

  # POST /handy_stuffs
  def create
    @handy_stuff = HandyStuff.new(handy_stuff_params)

    if @handy_stuff.save
      redirect_to @handy_stuff, notice: 'Handy stuff was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /handy_stuffs/1
  def update
    if @handy_stuff.update(handy_stuff_params)
      redirect_to @handy_stuff, notice: 'Handy stuff was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /handy_stuffs/1
  def destroy
    @handy_stuff.destroy
    redirect_to handy_stuffs_url, notice: 'Handy stuff was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handy_stuff
      @handy_stuff = HandyStuff.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def handy_stuff_params
      params.require(:handy_stuff).permit(:title, :description, :image, :name, :land)
    end
end
