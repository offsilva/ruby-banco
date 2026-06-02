class Conta

attr_reader :cpf, :titular, :saldo

  def initialize(cpf, titular)
    @cpf = cpf
    @titular = titular 
    @saldo = 0
  end

  def depositar valor
    @saldo = @saldo + valor 
    #ou += valor

  end

  def sacar valor
    return @saldo -= valor if valor <= @saldo 
      p "saldo insuficiente" 
  end

  def transferir destino, valor
    if valor <= saldo
      self.sacar valor
      destino.depositar valor
    else
      p "saldo insuficiente"
    end
  end
end

