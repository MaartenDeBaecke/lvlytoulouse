class ToysController < ApplicationController
  before_action :set_toy, only: [:show, :edit, :update, :destroy]
  access all: [:index, :europe, :usa], user: {except: [:destroy, :new, :create, :update, :edit]}, admin: :all

  # GET /toys
  SUPPORTED_TOY_TYPES = ["usa", "europe"].freeze

  def index
    @toys = Toy.send(toy_type.to_sym)
  end


  def toy_type
    if SUPPORTED_TOY_TYPES.include? params[:toy_type]
      params[:toy_type]
    else
      'all'
    end
  end

  # GET /toys/1
  def show
  end

  # GET /toys/new
  def new
    @toy = Toy.new
  end

  # GET /toys/1/edit
  def edit
  end

  # POST /toys
  def create
    @toy = Toy.new(toy_params)

    if @toy.save
      redirect_to @toy, notice: 'Toy was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /toys/1
  def update
    if @toy.update(toy_params)
      redirect_to @toy, notice: 'Toy was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /toys/1
  def destroy
    @toy.destroy
    redirect_to toys_url, notice: 'Toy was successfully destroyed.'
  end

  def europe
    @angular_toys = Toy.europe
  end

  def usa
    @angular_toys = Toy.usa
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_toy
      @toy = Toy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def toy_params
      params.require(:toy).permit(:title, :description, :image, :name, :land)
    end
end
