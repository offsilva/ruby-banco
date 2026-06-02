require_relative "../lib/conta"

class ContaView

  def initialize(data)
    @data = data
  end

  def menu_conta

    loop do
      print "Escolha: 1 - Listar | 2 - Cadastrar | 3 - Sacar  | 4 - Depositar | 5 - Transferir  | 0 - Voltar "
      escolha = gets.chomp.to_i
      case escolha
      
      when 1
        p " |  CPF   |      TITULAR       |      SALDO"
        @data.listar.each_with_index do |c, index|
          p "#{index + 1} |    #{c.cpf}     |     #{c.titular}     |   #{c.saldo}"
        end 
      
      when 2
        print "Informe o cpf do titular: "
        cpf = gets.chomp.to_i
        print "Informe o titular: "
        titular = gets.chomp
        @data.add Conta.new cpf, titular
      
      when 3
        @data.listar.each_with_index do |c, index|
        p "#{index + 1} - #{c.titular}"
        end
       
        print "Escolha a conta:" 
        indice = gets.chomp.to_i - 1
       
        print "Valor: R$ "
        @data.listar[indice].sacar(gets.chomp.to_f)
      
      when 4
        @data.listar.each_with_index do |c, index|
        p "#{index + 1} - #{c.titular}"
        end

        print "Escolha a conta: "
        indice = gets.chomp.to_i - 1

        print "Valor: R$ "
        @data.listar[indice].depositar(gets.chomp.to_f)
      
      when 5
        @data.listar.each_with_index do |c, index|
        puts "#{index + 1} - #{c.titular}"
        end

        print "Conta de origem: "
        origem = gets.chomp.to_i - 1

        print "Conta de destino: "
        destino = gets.chomp.to_i - 1

        print "Valor: R$ "
       valor = gets.chomp.to_f

       @data.listar[origem].transferir(@data.listar[destino], valor)
      when 0
        break
      else
        p "Opção Inválida!"
      end
    end
  end
end


       
