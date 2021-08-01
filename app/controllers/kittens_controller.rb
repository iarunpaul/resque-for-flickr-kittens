class KittensController < ApplicationController
  before_action :set_kitten, except: [:index, :new, :create]

  def index
    @kittens = Kitten.all
    respond_to do |format|
      format.html
      format.json { render json: @kittens  }
    end
  end

  def show
    # byebug
    respond_to do |format|
      format.html# {  }
      format.json { render json: @kitten }
    end
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)
    if @kitten.save
      Resque.enqueue(FlickrUrlGenerator, @kitten.id)
      flash[:success] = "Object successfully created"
      redirect_to @kitten
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
  end

  def update
    if @kitten.update(kitten_params)
      flash[:success] = "Object was successfully updated"
      redirect_to @kitten
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end


  def destroy
    # byebug
    if @kitten.destroy
      flash[:success] = 'Kitten was successfully deleted.'
      redirect_to kittens_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to kittens_url
    end
  end


  private
  def set_kitten
    @kitten = Kitten.find(params[:id])
    # @api_key = ENV["FLICKR_API_KEY"]
    # byebug
  end

  def kitten_params
    params.require(:kitten).permit(:name, :age, :cuteness, :softness)
  end
end
