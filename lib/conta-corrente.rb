require_relative "conta"

class ContaCorrente < Conta

  attr_reader :limite

  def initialize(numero, titular)
    super(numero, titular)
    @limite = 150
  end
end
