class MonstersController < ApplicationController
 def index
    @monsters = Monster.all.order(:name)
 end

 def show
    @monster = Monster.find(params[:id])
 end
 def new
    @monster = Monster.new
 end
 def create
   @monster = Monster.new(monster_params)
   if @monster.save
      redirect_to @monster, notice: "Se ha creado el Monstruo correctamente!"
   else
      render :new
   end
 end
 private
 def monster_params
   params.require(:monster).permit(:name, :description, :phone, :birthdate)
 end
 def destroy
   @monster = Monster.find(params[:id])
   @monster.destroy
   redirect_to monsters_path, notice: "Se ha eliminado el Monstruo correctamente!"
 end
end
