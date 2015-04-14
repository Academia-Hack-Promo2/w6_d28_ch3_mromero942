requiere 'httparty'

class MariasController < ApplicationController

  include HTTParty
	base_uri "http://localhost:3000 "

  #get listado de todas las fiestas
  def consulta
    fiesta = Fiesta.all
    render json: fiesta
  end

  #post crea solicitud de fiesta

  def creacion
    fiesta = Fiesta.new (params[:id])
    if Fiesta.save
      puts "su fiesta a sido registrada"
    else 
      puts "su fiesta no a sido registrada"
    end
    render = json: fiesta 
  end

  #put actualiza una fiesta

  def actualizacion 
    fiesta.update (params[:id]) 
    render json: fiesta
  end

  #delete borra la solicitud de una fiesta

  def borrar 

    fiesta.destroy
    render json: fiesta 
  end


  private

  def parametro
    params.requiere (:Fiesta).permit (:nombre, :lugar, :fecha, :reservacion)
  end
end
