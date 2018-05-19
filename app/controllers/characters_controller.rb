class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    binding.pry
    @character = Character.new(character_params)

    if @character.save
      redirect_to characters_path, notice: "Character was saved successfully"
    else
      render :new
    end
  end

  def edit
    @character = Character.find(params[:id])
  end

  def update
    if @character.update(character_params)
      redirect_to characters_path, notice: "Character was updated successfully"
    else
      render :edit
    end
  end

  def character_params
    params.require(:character).permit(:name, :description, :larp_id)
  end
end
