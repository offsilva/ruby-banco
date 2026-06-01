require_relative "../lib/pessoa"
class PessoaView
  
  def initialize(data)
    @data = data
  end

  def menu_pessoa
   loop do
    print "Escolha: 1 - listar | 2 - Cadastrar | 0 - Voltar:  "
    
    escolha = gets.chomp.to_i
    case escolha
    when 1
     puts @data.listar
    when 2
      print "Informe o CPF/CNPJ: "
      registro = gets.chomp
      print "Informe o nome: "
      nome = gets.chomp
      pessoa = Pessoa.new registro, nome
      @data.add pessoa
    when 0
      break
    else
      p "opção invalida."
    end
   end
  end
end
