class PagesController < ApplicationController
  def about
  end

  def contact
    @members = %w[roberto nicolas patricia eduardo tomas]
    query = params[:member] # pega o que está na url depois do ?member=
    if query # só faz o filtro se o usuário escrever alguma coisa, para não quebrar quando não procuramos nada
      @members = @members.select { |member| member.start_with?(query.downcase) } # filtra pelo começo do nome, sem considerar a maiúscula
    end
  end

  def home
  end
end
