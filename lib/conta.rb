class Conta

attr_reader :numero, :titular, :saldo

  def initialize(numero, titular, saldo)
    @numero = numero
    @titular = titular 
    @saldo = 0
  end

  def depositar valor
    @saldo = @saldo + valor 
    
    #ou += valor
  end

 def sacar valor
  if valor <= saldo
    @saldo = @saldo - valor
  else
   puts "saldo insuficiente!"
  end
 end
end
