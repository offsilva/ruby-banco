require_relative "../lib/conta"

class ContaData

  def initialize 
    @contas = []
  end

  def add(conta)
    @contas.push conta
  end

  def listar
    @contas
  end

end



